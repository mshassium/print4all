package ru.rail.print4all.mvc.spring_config;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * User: rakh1213
 */
@Configuration
@EnableTransactionManagement
@ComponentScan({"ru.rail.print4all.mvc"})
public class PersistenceConfig {

    private final String LOCAL_URL="jdbc:postgresql://localhost:5432/print4all";

    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(restDataSource());
        sessionFactory.setPackagesToScan(new String[]{"ru.rail.print4all.mvc.model"});
        sessionFactory.setHibernateProperties(hibernateProperties());

        return sessionFactory;
    }

//    @Bean
//    public DataSource restDataSource() {
//        BasicDataSource dataSource = new BasicDataSource();
//        URI dbUri = null;
//        try {
//            dbUri = new URI(System.getenv("DATABASE_URL"));
//        } catch (URISyntaxException e) {
//            throw new RuntimeException("!!!!----------dbUri NULL--------------!!!!");
//        }
//        String username = dbUri.getUserInfo().split(":")[0];
//        String password = dbUri.getUserInfo().split(":")[1];
//        int port = dbUri.getPort();
//        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ":" + port + dbUri.getPath();
//        dataSource.setDriverClassName("org.postgresql.Driver");
//        dataSource.setUrl(dbUrl);
//        dataSource.setUsername(username);
//        dataSource.setPassword(password);
//        return dataSource;
//    }

    @Bean
    public DataSource restDataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        String username = "postgres";
        String password = "rail";
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl(LOCAL_URL);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource;
    }

    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
        HibernateTransactionManager txManager = new HibernateTransactionManager();
        txManager.setSessionFactory(sessionFactory);

        return txManager;
    }

    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
        return new PersistenceExceptionTranslationPostProcessor();
    }

    Properties hibernateProperties() {
        return new Properties() {
            {
                setProperty("hibernate.hbm2ddl.auto", "update");
                setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
                setProperty("hibernate.globally_quoted_identifiers", "true");
            }
        };
    }
}
