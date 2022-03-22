package ru.mirea;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class MireaApplication {

	public static ConfigurableApplicationContext ctx;

	public static void main(String[] args) {
		System.setProperty("java.awt.headless", "false");
		ctx = SpringApplication.run(MireaApplication.class);
		new WebsocketServer().start();
	}

}