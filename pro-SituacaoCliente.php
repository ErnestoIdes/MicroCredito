<?php
include_once('dbcon.php');
require_once 'header.php';

$results = mysqli_query($conn, "SELECT * FROM tab_cliente");
?>


<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <div>
        <a href="pro-PedidoCredito.php" class="btn btn-primary">Pedido de Credito</a>
        <a href="pro-DecisaoCredito.php" class="btn btn-primary">Decisao do Credito</a>
        <a href="pro-SituacaoCliente.php" class="btn btn-primary active">Situacao do cliente</a>
        <a href="pro-GestaoCredito.php" class="btn btn-primary">Gestao de Credito</a>
    </div>
</ol>


<center><h1>Selecione o Cliente</h1></center>
<center><h3 style="color: red">Open Pdf when <b><i>Visualizar</i></b> is selected</h3></center>


<div class="card-body">
    <div class="table-responsive table-hover">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
            <tr>
                <th>Nome</th>
                <th>Contacto</th>
                <th>Tipo Doc.</th>
                <th>N° Coc.</th>
                <th>Visualizar</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($results)) { ?>
                <tr>
                    <td><?php echo $row['Nome']; ?></td>
                    <td><?php echo $row['ContactoCliente']; ?></td>
                    <td><?php echo $row['TipoDocu']; ?></td>
                    <td><?php echo $row['Documento']; ?></td>
                    <td>
                        <center><a class="btn btn-light btn-sm fa fa-eye"
                                   href="pro-SituacaoCliente.php?Visualizar=<?php echo $row['IdCliente']; ?>">Visualizar</a>
                        </center>
                    </td>

                </tr>

            <?php } ?>
            </tbody>
        </table>
    </div>
</div>


<!-- Footer -->
<?php require_once 'footer.php'; ?>
</body>

</html>