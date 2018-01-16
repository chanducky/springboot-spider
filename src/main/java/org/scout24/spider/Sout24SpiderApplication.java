package org.scout24.spider;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class Sout24SpiderApplication {

	public static void main(String[] args) {
		SpringApplication.run(Sout24SpiderApplication.class, args);
	}
}
