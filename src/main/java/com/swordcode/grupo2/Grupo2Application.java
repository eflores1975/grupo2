package com.swordcode.grupo2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class Grupo2Application {

	public static void main(String[] args) {
		SpringApplication.run(Grupo2Application.class, args);
	}

	@Bean
	public ServletRegistrationBean resultadosServletBean() {
		ServletRegistrationBean bean = new ServletRegistrationBean(
			new ResultadosServlet(), "/resultados-servlet/*"
		);

		bean.setLoadOnStartup(1);
		return bean;
	}
}
