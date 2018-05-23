<?php
include_once('../dbcon.php');
//require_once 'header.php';
require_once ("../fpdf181/fpdf.php");




$resultGestor = mysqli_query($conn, "SELECT * FROM tb_gestor");
$results = mysqli_query($conn, "SELECT * FROM tab_cliente");



 ?>
<!-- Breadcrumbs-->

<!DOCTYPE html>
<html>
<head>
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<title></title>
</head>
<body>
<!-- <div style="width: 90%; margin: 50px auto;">
        <table class="table table-bordered table-sm" width="100%" cellspacing="0">
            <thead class="thead-dark">
            <tr>
           		<th>#</th>
                <th>Nome</th>
                <th>Sexo</th>
                <th>Estado</th>
                <th>Cidade</th>
                <th>Bairro</th>
                 <th>Quarteirao</th>
                <th>CasaNumero</th>
                <th>Contacto</th>
                <th>Profissao</th>
                <th>Data Nasc.</th>
           
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($results)) { ?>
   
                <tr>
               		<td><?php echo $row['IdCliente']; ?></td>
                    <td><?php echo $row['Nome']; ?></td>
                    <td><?php echo $row['Sexo']; ?></td>
                    <td><?php echo $row['Estado']; ?></td>
                    <td><?php echo $row['Cidade']; ?></td>
                    <td><?php echo $row['Bairro']; ?></td>
                    <td><?php echo $row['Quarteirao']; ?></td>
                   <td><?php echo $row['CasaNumero']; ?></td>
                    <td><?php echo $row['ContactoCliente']; ?></td>
                    <td><?php echo $row['Profissao']; ?></td>
                    <td><?php echo $row['DataNascimento']; ?></td>
                   
                </tr>

            <?php } ?>
            </tbody>
        </table>
   </div>
 -->

<?php 

$pdf=new FPDF();  
$pdf->AddPage();
$pdf->setFont('Arial','B',16);
$pdf->Cell(40,10,'Hello World');
$pdf->Output("rel.pdf","I");








?>










</body>
</html>

