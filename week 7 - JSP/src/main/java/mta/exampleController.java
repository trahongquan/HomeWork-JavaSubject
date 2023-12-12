package mta;

import com.example.Person;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
    @WebServlet("/person")
    public class exampleController extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // Set data for person
//            Person person = new Person();
//            person.setName("John Doe");
//            person.setAge(30);

            // Set person as an attribute in request scope
//            request.setAttribute("person", person);

            // Forward the request to person.jsp
            request.getRequestDispatcher("person.jsp").forward(request, response);
        }
    }

