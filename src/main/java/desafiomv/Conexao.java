package desafiomv;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	Connection con = null;
	// String url = "jdbc:mysql://localhost:3306/?user=root?useTimezone=true&serverTimezone=UTC";
	String user = "root";
	String senha = "Al91072916";
	String DRIVER_MYSQL = "com.mysql.cj.jdbc.Driver";
	String LOCAL_SERVIDOR = "localhost";
	String BANCO_DE_DADOS = "cdtColab";//
	String PORTA_BANCO = "3306";

	public Connection conectaBanco() throws Exception {
		if (con == null) {
			String url = "jdbc:mysql://" + LOCAL_SERVIDOR + ":" + PORTA_BANCO + "/" + BANCO_DE_DADOS;
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, senha);
			//System.out.println("Conexão realizada com sucesso!");
		}
		return con;
	}

	public void desconectaBanco() throws Exception {
		if (con != null) {
			con.close();
			con = null;
			//System.out.println("Conexão fechada com sucesso!");
		}
	}
}
