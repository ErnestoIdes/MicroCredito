<?php require_once 'header.php'; ?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <div>
        <a href="pro-PedidoCredito.php" class="btn btn-primary">Pedido de Credito</a>
        <a href="pro-DecisaoCredito.php" class="btn btn-primary">Decisao do Credito</a>
        <a href="pro-SituacaoCliente.php" class="btn btn-primary">Situacao do cliente</a>
        <a href="pro-GestaoCredito.php" class="btn btn-primary active">Gestao de Credito</a>
    </div>
</ol>

<div style="width: auto; margin: 50px auto;">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
        <hr/>
        <?php
        if (isset($successMsg)) {
            ?>
            <div class="alert alert-success">
                <span class="glyphicon glyphicon-info-sign"></span>
                <?php echo $successMsg; ?>
            </div>
            <?php
        }
        ?>
        <!-- /.content-wrapper-->
        <?php require_once 'footer.php'; ?>





<center><h1 style="color: red">Erase this Page </h1></center>





        </body>

        </html>