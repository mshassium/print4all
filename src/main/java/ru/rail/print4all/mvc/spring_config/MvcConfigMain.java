package ru.rail.print4all.mvc.spring_config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;
import ru.rail.print4all.services.OrganisationActions;
import ru.rail.print4all.services.ServiceActions;
import ru.rail.print4all.services.UserActions;
import ru.rail.print4all.services.impl.OrganisationActionsImpl;
import ru.rail.print4all.services.impl.ServiceActionsImpl;
import ru.rail.print4all.services.impl.UserActionsImpl;

import java.util.Properties;

/**
 * Created by root on 16.06.15.
 */
@EnableWebMvc
@Configuration
@ComponentScan(basePackages = {"ru.rail.print4all.mvc"})
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
    @Bean
    public UserActions userActions(){
        return new UserActionsImpl();
    }


    @Bean
    public OrganisationActions organisationActions(){
        return new OrganisationActionsImpl();
    }


    @Bean
    public ServiceActions serviceActions(){
        return new ServiceActionsImpl();
    }
}
