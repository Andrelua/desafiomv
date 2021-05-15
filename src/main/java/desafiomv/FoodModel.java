package desafiomv;

import java.sql.PreparedStatement;

public class FoodModel extends Conexao {
	
	public void insertFood(int idcolab, String comida) throws Exception {

		this.conectaBanco();
		
		PreparedStatement stnt = null;

		stnt = this.con.prepareStatement("INSERT INTO food (name, id_colab) VALUES (?, ?)");
		stnt.setString(1, comida);
		stnt.setInt(2, idcolab); // setInt

		stnt.executeUpdate();

		this.desconectaBanco();

	}
}
