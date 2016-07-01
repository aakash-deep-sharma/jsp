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

import java.util.Arrays;
import java.util.List;

import static org.hamcrest.Matchers.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.model.Resource;
import com.service.AdminServiceImpl;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:/spring-servlet-test.xml")
@WebAppConfiguration
public class TestRestController {
	
	private MockMvc mockMvc;
	 
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
    	
        List<Resource> rList= adminServiceImpl.listResource();
        mockMvc.perform(get("/resources").accept(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk())
                .andExpect(content().contentType("application/json;charset=UTF-8"));
               // .andExpect(jsonPath("id").value(resource1.getResourceId()));
    
       /* when(adminServiceImpl.getResource(resource12)).thenReturn(new Resource());//Person(1L, "Chuck"));

        mockMvc.perform(get("/person/{id}", 1L))
                .andExpect(status().isOk())
                .andExpect(view().name("personPage"))
                .andExpect(model().attribute("personData",
                                             allOf(hasProperty("id", is(1L)),
                                                   hasProperty("name", is("Chuck")))));
  
*/        
             
    
    }
    

}
