package desafiomv;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ColabModel extends Conexao {

	public void insert(Colab colab) throws Exception {

		this.conectaBanco();

		PreparedStatement stnt = null;

		stnt = this.con.prepareStatement("INSERT INTO colab (name, cpf) VALUES (?, ?)");
		stnt.setString(1, colab.getNome());
		stnt.setString(2, colab.getCpf()); // setInt

		stnt.executeUpdate();

		this.desconectaBanco();

	}

	public boolean selectCpf(Colab colab) throws Exception {
		this.conectaBanco();

		List<String> dados = new ArrayList<>();
		String result = null;

		PreparedStatement stnt = null;

		stnt = this.con.prepareStatement("SELECT * FROM colab WHERE cpf = ?");		
		stnt.setString(1, colab.getCpf());
		
		ResultSet rs = stnt.executeQuery();

		while (rs.next()) {
			result = (rs.getString(1) + ";" + rs.getString(2));
			dados.add(result);
		}
		
		if (dados.size() > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public int selectId(String cpf) throws Exception {
		
		this.conectaBanco();
		int result = 0;

		PreparedStatement stnt = null;

		stnt = this.con.prepareStatement("SELECT idcolab FROM colab WHERE cpf = ?");		
		stnt.setString(1, cpf);
		
		ResultSet rs = stnt.executeQuery();
		
		while (rs.next()) {
			result = (rs.getInt(1));
		}
		
		//System.out.print(result);
		
		return result;
	}
	
	public List<String> listar() throws Exception{
		
		this.conectaBanco();
		
		List<String> dados = new ArrayList<>();
		String result = null;
		
		PreparedStatement stnt = null;
		
		stnt = this.con.prepareStatement("SELECT C.name, C.cpf, F.name "
				+ "FROM food AS F "
				+ "INNER JOIN colab as C "
				+ "ON F.id_colab = C.idcolab "
				+ "order by C.name");
		
		ResultSet rs = stnt.executeQuery();
		
		while (rs.next()) {
			result = (rs.getString(1) + ";" + rs.getString(2) + ";" + rs.getString(3));
			dados.add(result);
		}
		
		return dados;
	}
	
}
