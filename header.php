<?php
session_start();
if (!isset($_SESSION['NomeUsuario'])) {
    header('location:index.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SimiCr&eacute;dito</title>
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="home.php"> <span class="fa fa-bank" style="font-size:24px"></span>SimiCr&eacute;dito
    </a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Parametrizacao">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#4collapseComponents"
                   data-parent="#exampleAccordion">
                    <i class="  fa fa-pencil-square-o"></i>
                    <span class="nav-link-text">Cadastro </span>
                </a>
                <ul class="sidenav-second-level collapse" id="4collapseComponents">
                    <li>
                        <a href="cadastroCliente.php" class="fa fa-user-plus"> Cliente</a>
                        <a href="cadastroUsuario.php" class="fa fa-user"> Usuario</a>
                        <a href="cadastroAvalista.php" class="fa fa-user"> Avalista</a>
                        <a href="cadastroGestor.php" class="fa fa-user"> Gestor</a>
                        <a href="cadastroSucursal.php" class="fa fa-institution"> Sucursal</a>
                        <a href="cadastroBanco.php" class="fa fa-bank"> Banco</a>
                    </li>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Parametrizacao">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#13collapseComponents"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-wrench"></i>
                    <span class="nav-link-text">Parametriza&ccedil;&atilde;o </span>
                </a>
                <ul class="sidenav-second-level collapse" id="13collapseComponents">
                    <li>
                        <a href="p-parametros.php"> Parametros</a>
                        <a href="p-linhaCredito.php"> Linha de Credito</a>
                        <a href="p-mudarGestor.php">Mudan&ccedil;a Gestor</a>
                    </li>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Processos">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-wrench"></i>
                    <span class="nav-link-text">Cr&eacute;dito</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseComponents">
                    <li><a href="processo.php">Processos</a>
                    <li><a href="consulta.php">Consulta
                        </a>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Financeiro">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#3collapseComponents"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-wrench"></i>
                    <span class="nav-link-text">Contabilidade</span>
                </a>
                <ul class="sidenav-second-level collapse" id="3collapseComponents">
                    <li>
                        <a href="Operacoes.php">Opera&ccedil;&otilde;es</a>
                        <a href="Consultas.php">Consultas</a>
                    </li>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Parametrizacao">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#7collapseComponents"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-wrench"></i>
                    <span class="nav-link-text">Configura&ccedil;&otilde;es </span>
                </a>
                <ul class="sidenav-second-level collapse" id="7collapseComponents">
                    <li>
                        <a href="p-parametros">Par&aacute;metros</a>
                        <a href="p-linhaCredito">Linhas de Cr&eacute;dito</a>
                        <a href="cadastroGestor.php">Cadastro de Gestor</a>
                        <a href="p-mudarGestor">Mudan&ccedil;a de Gestor</a>

                    </li>
                </ul>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-file"></i>
                    <span class="nav-link-text">Funcion&aacute;rio</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseExamplePages">
                    <li>
                        <a href="perfil.php">Perfil</a>
                    </li>
                    <li>
                        <a href="cadastroUsuario.php">Novo</a>
                    </li>

                </ul>
            </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                <a class="nav-link" href="#">
                    <i class="fa fa-fw fa-link"></i>
                    <span class="nav-link-text">Funcion&aacute;rio</span>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Mensagem
              <span class="badge badge-pill badge-primary">12 Novas</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
                </a>

                <div class="dropdown-menu" aria-labelledby="messagesDropdown">
                    <h6 class="dropdown-header">Novas Mensagens:</h6>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <strong>David Miller</strong>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome!
                            These messages clip off when they reach the end of the box so they don't overflow over to
                            the sides!
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <strong>Jane Smith</strong>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00
                            instead of 4:00. Thanks!
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <strong>John Doe</strong>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">I've sent the final files over to you for review. When
                            you're able to sign off of them let me know and we can discuss distribution.
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item small" href="#">Ver todas Mensagens</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alertas
              <span class="badge badge-pill badge-warning">6 Novas</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
                </a>

                <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                    <h6 class="dropdown-header">Novas Alertas:</h6>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                    <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">This is an automated server response message. All systems
                            are online.
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                    <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">This is an automated server response message. All systems
                            are online.
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                    <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
                        <span class="small float-right text-muted">11:21 AM</span>

                        <div class="dropdown-message small">This is an automated server response message. All systems
                            are online.
                        </div>
                    </a>

                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item small" href="#">View all alerts</a>
                </div>
            </li>
            <li class="nav-item">
                <form class="form-inline my-2 my-lg-0 mr-lg-2">
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="Procurar Por...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                    <i class="fa fa-search"></i>
                </button>
              </span>
                    </div>
                </form>
            </li>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                <a class="nav-link" href="perfil.php">
                    <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">
              
              <?php echo $_SESSION['NomeUsuario']; ?>
              
            </span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-fw fa-sign-out"></i>Sair</a>
            </li>
        </ul>
    </div>
</nav>
<div class="content-wrapper">
    <div class="container-fluid">
       