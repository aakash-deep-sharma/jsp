package com.test.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;

import static org.hamcrest.Matchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.controller.RestController;
import com.model.Resource;
import com.service.AdminServiceImpl;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/spring-servlet-test.xml")
@WebAppConfiguration
public class TestRestController {
	
	/*private MockMvc mockMvc;
	 
	@Autowired
    private WebApplicationContext ctx;
    @Autowired
    private AdminServiceImpl adminServiceImpl;
    
    
    
    @Before
    public void setUp() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
    }
 
    @Test
    public void contact() throws Exception {
    	
         
    }
*/    

	public static final MediaType APPLICATION_JSON_UTF8 = new MediaType(
			MediaType.APPLICATION_JSON.getType(),
			MediaType.APPLICATION_JSON.getSubtype(), Charset.forName("utf8"));
	
	private MockMvc mockMvc;
	
	@Autowired
	private RestController restController;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.standaloneSetup(restController).build();
	}

	@Test
	public void shouldFindById() throws Exception {
		mockMvc.perform(get("/resources/{id}", "2"))
		.andExpect(status().isOk())
		.andExpect(content().contentType(APPLICATION_JSON_UTF8));
		//.andExpect(jsonPath("$id", is("E1")))
		//.andExpect(jsonPath("$name", is("Doe, John")));
	}
	
	@Test
	public void shouldNotFindTheResource() throws Exception{
		mockMvc.perform(get("/resources/{id}", "2"))
		.andExpect(status().is(404));
	}
	
	
}
