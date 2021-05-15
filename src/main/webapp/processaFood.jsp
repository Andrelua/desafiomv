<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="desafiomv.ColabModel"%>
<%@page import="desafiomv.Colab"%>
<%@page import="desafiomv.FoodModel"%>
<%@page import="desafiomv.Food"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Processo da comida</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<%
	try {
		Food food = new Food();
		int i = 0;
		String comida = null;
		List<String> comidas = new ArrayList<String>();

		while (true) {
			comida = request.getParameter("food" + i);
			i++;
			
			if (comida != null) {
			
			if (comida == "" || comida.isEmpty()) {
	%>

	<div class="container">
		<div class="row">
			<div class="col-8">
				<div class="card">
					<div class="card-body">
						<div class="alert alert-danger" role="alert">
							ERRO - ALGUM CAMPO COMIDA ESTÁ EM BRANCO OU É NULO. <a
								href="../desafiomv/food.html">clique aqui</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
	break;
	}
	comidas.add(comida);
	} else {
		break;
	}
	};

	try {
		String cpf = (String) session.getAttribute("cpf");

		ColabModel clb = new ColabModel();
		FoodModel foodm = new FoodModel();

		int idcolab = clb.selectId(cpf);

		for (int x = 0; x < comidas.size();  x++) {
		foodm.insertFood(idcolab, comidas.get(x));
		}

		response.sendRedirect("../desafiomv/list.jsp");

	} catch (Exception e) {
	out.print(e.getMessage());
	}

	} catch (Exception e) {
	out.print(e.getMessage());
	}
	%>
	<script type="text/javascript" src="js/app.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
</body>
</html>