<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="desafiomv.ColabModel"%>
<%@page import="desafiomv.Colab"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Processamento do Colaborador!</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
	try {
		String cpf = request.getParameter("cpf");
		String name = request.getParameter("name");

		if (cpf.length() < 11 || cpf.length() > 14) {
	%>

	<div class="container">
		<div class="row">
			<div class="col-8">
				<div class="card">
					<div class="card-body">
						<div class="alert alert-danger" role="alert">
							ERRO - O CPF ESTÁ INVÁLIDO. EX: 12345678900 OU 123.456.789-00 <a
								href="../desafiomv/index.html">clique aqui</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
	} else {
	ColabModel cm = new ColabModel();
	Colab clb = new Colab();

	cpf.replace("-", "");
	cpf.replace(".", "");

	// 
	clb.setCpf(cpf);
	clb.setNome(name);

	if (cm.selectCpf(clb)) {
	%>

	<div class="container">
		<div class="row">
			<div class="col-8">
				<div class="card">
					<div class="card-body">
						<div class="alert alert-danger" role="alert">
							ERRO - O CPF JÁ ESTÁ CADASTRADO. <a
								href="../desafiomv/index.html">clique aqui</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
	} else {
		cm.insert(clb);
		session.setAttribute("cpf", cpf);
		response.sendRedirect("../desafiomv/food.html");
	}
	}
	} catch (Exception e) {
	out.print(e.getMessage());
	}
	%>
	<script type="text/javascript" src="js/app.js"></script>
	<script type="text/javascript" src="js/formulario.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
</body>
</html>