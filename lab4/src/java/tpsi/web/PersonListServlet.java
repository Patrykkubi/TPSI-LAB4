package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

   
     
     protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         Person p2= new Person("Patryk", "Kubicki", "patryk@gmail.com");
         Person p3= new Person("Marek", "Owsiak", "owsiak@gmail.com");
         Person p4= new Person("Oskar", "Lezsczuk", "lesiak@gmail.com");
         
         List<Person> osoby = new ArrayList<>();
         osoby.add(p2);
         osoby.add(p3);
         osoby.add(p4);
         
        request.setAttribute("Osoby", osoby);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
         
    }

}
