package demo;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("studentName");
        String email = request.getParameter("email");
        String department = request.getParameter("department");

        request.setAttribute("studentName", name);
        request.setAttribute("email", email);
        request.setAttribute("department", department);

        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
