package ru.rail.print4all.spring_config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

import java.util.Properties;

/**
 * Created by root on 16.06.15.
 */
@EnableWebMvc
@Configuration
@ComponentScan(basePackages = {"ru.rail.print4all"})
public class MvcConfigMain extends WebMvcConfigurerAdapter {


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("resources/");
        super.addResourceHandlers(registry);
    }

    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Bean
    public FreeMarkerViewResolver jspViewResolver() {
        FreeMarkerViewResolver bean = new FreeMarkerViewResolver();
        bean.setContentType("text/html; charset=utf-8");
        bean.setCache(true);
        bean.setPrefix("");
        bean.setSuffix(".ftl");
        return bean;
    }

    @Bean
    public FreeMarkerConfigurer freeMarkerConfigurer() {
        final Properties properties = new Properties();
        properties.setProperty("default_encoding", "UTF-8");
        final FreeMarkerConfigurer bean = new FreeMarkerConfigurer();
        bean.setTemplateLoaderPath("/WEB-INF/ftl/");
        bean.setFreemarkerSettings(properties);
        return bean;
    }
}
