import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/closeAccountServlet")
public class closeAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(false);
        String accountNo = (String) session.getAttribute("account_no");

        double balance = getBalance(accountNo);
        if (balance == 0) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingApp", "root", "Mome@2004");
                PreparedStatement ps = con.prepareStatement("DELETE FROM Customer WHERE account_no = ?");
                ps.setString(1, accountNo);
                ps.executeUpdate();

                session.invalidate();
                response.sendRedirect("customerLogin.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<html><body><p>Something went wrong. Please try again later.</p></body></html>");
            }
        } else {
            out.println("<html><body>");
            out.println("<p>Balance must be zero. Withdraw all the money!</p>");
            out.println("<a href='accountDetails.jsp'>Back to Account Details</a>"); // Assuming there is a page to redirect back
            out.println("</body></html>");
        }
    }

    private double getBalance(String accountNo) {
        double bal = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BankingApp", "root", "Mome@2004");
            PreparedStatement ps = con.prepareStatement("SELECT initial_balance FROM Customer WHERE account_no=?");
            ps.setString(1, accountNo);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                bal = rs.getDouble("initial_balance");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bal;
    }
}
