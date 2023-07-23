package detective;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

public class StartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String name = req.getParameter("name");
        String amountOfClue = req.getParameter("amountOfClue");
        session.setAttribute("name", name);
        session.setAttribute("amountOfClue", amountOfClue);
        getServletContext().getRequestDispatcher("/clue.jsp").forward(req, resp);
    }

    public String checkPressedButton(HttpServletRequest req, String amountOfClue) {

        Enumeration fields = req.getParameterNames();
        if (fields.hasMoreElements()) {
            while (fields.hasMoreElements()) {
                String field = (String) fields.nextElement();
                if (field.equals("accept")) {
                    amountOfClue = incrementAmountOfClue(amountOfClue);
                } else {
                    return amountOfClue;
                }
            }
        }
        return amountOfClue;
    }

    public String incrementAmountOfClue(String clue) {
        int temp = Integer.parseInt(clue);
        temp++;
        clue = String.valueOf(temp);
        return clue;
    }
}