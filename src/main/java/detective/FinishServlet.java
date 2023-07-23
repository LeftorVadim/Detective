package detective;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class FinishServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        String amount = (String) session.getAttribute("amountOfClue");
        int count = Integer.parseInt(amount);

        if (count >= 3) {
            getServletContext().getRequestDispatcher("/caseInvestigated.jsp").forward(req, resp);
        } else {
            getServletContext().getRequestDispatcher("/caseNotInvestigated.jsp").forward(req, resp);
        }
    }
}
