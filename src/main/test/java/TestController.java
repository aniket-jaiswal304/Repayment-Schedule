import org.junit.Before;
import org.junit.Test;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.TestContextManager;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

public class TestController extends BaseTest {

    @Test
    public void givenCont() throws Exception {
        this.mockMvc.perform(get("/")).andExpect(status().is2xxSuccessful());

    }
    @Test
    public void givenCont1() throws Exception {
        this.mockMvc.perform(get("/")).andExpect(status().isOk())
                .andExpect(view().name("repaymentSchedule"))
                .andExpect(forwardedUrl("/WEB-INF/views/repaymentSchedule.jsp"));


    }



}
