import detective.StartServlet;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class StartServletTest {
    @Test
    public void increment() {
        StartServlet servlet = new StartServlet();
        String count = "0";
        assertEquals("1", servlet.incrementAmountOfClue(count));
    }
}
