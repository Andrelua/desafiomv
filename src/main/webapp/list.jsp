<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="desafiomv.ColabModel"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lista de colaboradores</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<h1 id="head">Colaboradores cadastrados</h1>
						<div class="cad">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Nome</th>
										<th scope="col">CPF</th>
										<th scope="col">Comida</th>
									</tr>
								</thead>
								
							
							<%
							ColabModel clb = new ColabModel();
							List<String> dados = new ArrayList<>();
							dados = clb.listar();
							String[] linha = new String[3];
							for (int x = 0; x < dados.size(); x++) {
								linha = dados.get(x).split(";");								
							%>

								<tbody>
									<tr>
										<td><% out.println(linha[0]); %></td>
										<td><% out.println(linha[1]); %></td>
										<td><% out.println(linha[2]); %></td>
									</tr>
								</tbody>
							
							<%
							};
							%>
							</table>
							<div class="form-group text-center">
								<a href="../desafiomv/index.html" class="btn btn-primary ">Cadastrar
									Novo</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/app.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
</body>
</html>