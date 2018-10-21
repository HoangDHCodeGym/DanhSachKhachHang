import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CustomerListServlet", urlPatterns = "/CustomerList")
public class CustomerListServlet extends HttpServlet {
    private static String message = "";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String customerName = request.getParameter("name");
        String customerBirthDate = request.getParameter("birthdate");
        String customerAddress = request.getParameter("address");
        PrintWriter writer = response.getWriter();
        message += "<tr> " +
                "<td>" + customerName + "</td>" +
                "<td>" + customerBirthDate + "</td>" +
                "<td>" + customerAddress + "</td>" +
                "</tr>";
        request.setAttribute("customerList", message);
        RequestDispatcher reqDispatcher = getServletConfig().getServletContext().getRequestDispatcher("/index.jsp");
        reqDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
