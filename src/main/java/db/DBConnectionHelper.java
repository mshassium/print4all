package db;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URI;
import java.net.URISyntaxException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by root on 07.06.15.
 */
public class DBConnectionHelper {

    private Logger log = LoggerFactory.getLogger(this.getClass().getName());
    public Connection getConnection() throws URISyntaxException, SQLException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));
        String username = dbUri.getUserInfo().split(":")[0];
        String password = dbUri.getUserInfo().split(":")[1];
        int port = dbUri.getPort();
        log.debug("port: {}",port);
        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ":" + port + dbUri.getPath();
        Connection connection = DriverManager.getConnection(dbUrl, username, password);
        log.debug("connection not null: {}",connection!=null);
        return connection;
    }

}
