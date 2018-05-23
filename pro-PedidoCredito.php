<?php
include_once('dbcon.php');
require_once 'header.php';

$IdSelecionado = 0;
$IdCliente = 0;

//SELECIONAR
if (isset($_GET['Selecionar'])) {
    global $IdSelecionado;
    $IdSelecionado = $_GET['Selecionar'];
}


if (isset($_POST['btn-salvar'])) {
    // echo($IdSelecionado);
    $IdCliente = $IdSelecionado;//$IdSelecionado;
    $IdLinha = $_POST['IdLinha'];
    $IdGestor = $_POST['IdGestor'];
    $IdAvalista = $_POST['IdAvalista'];
    $IdDestino = $_POST['IdDestino'];
    $ValorSolicitado = $_POST['ValorSolicitado'];
    $IdSucursal = $_SESSION['IdSucursal'];
    $IdUsuario = $_SESSION['IdUsuario'];
    $DataReg = date("Y-m-d h:i:s");
    $Situacao = 'Solicitado';
    // $DataReg=date("Y/m/d");
    $sql = "insert into tab_credito_1solicitado (IdLinha,IdGestor,IdDestino,IdSucursal,IdUsuario,IdAvalista,IdCliente,ValorSolicitado,Situacao,DataReg)
      values('$IdLinha','$IdGestor','$IdDestino','$IdSucursal','$IdUsuario','$IdAvalista',
      '$IdCliente','$ValorSolicitado','$Situacao','$DataReg')";

    if (mysqli_query($conn, $sql)) {
        $successMsg = 'Registado com Sucesso!!!';
    } else {
        echo 'Error ' . mysqli_error($conn);
    }
}


// Ter nome apartir do Id Selecionado
$result = mysqli_query($conn, "SELECT Nome FROM tab_cliente WHERE IdCliente=$IdSelecionado");

$resultCliente = mysqli_query($conn, "SELECT * FROM tab_cliente");
$resultGestor = mysqli_query($conn, "SELECT * FROM tb_gestor");
$resultlinhaCredito = mysqli_query($conn, "SELECT * FROM tb_linhacredito");
$resultAvalista = mysqli_query($conn, "SELECT * FROM tab_avalista");
$resultDestinoCredito = mysqli_query($conn, "SELECT * FROM tb_destinocredito");
$resultTaxas = mysqli_query($conn, "SELECT * FROM tb_taxas");
?>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <div>
        <a href="pro-PedidoCredito.php" class="btn btn-primary active">Pedido de Credito</a>
        <a href="pro-DecisaoCredito.php" class="btn btn-primary">Decisao do Credito</a>
        <a href="pro-SituacaoCliente.php" class="btn btn-primary">Situacao do cliente</a>
        <a href="pro-GestaoCredito.php" class="btn btn-primary">Gestao de Credito</a>
    </div>
</ol>

<!-- FORMULARIO -->
<div style="width: auto; margin: auto auto;">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
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

        <div class="form-control">

            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-3">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Linha</label>
                        </div>
                        <select name="IdLinha" class="form-control">
                            <?php while ($row = mysqli_fetch_array($resultlinhaCredito)):; ?>
                                <option value="<?php echo $row[0]; ?>">
                                    <?php echo $row[1]; ?></option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </div>


                <div class="col-sm-3">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Avalista</label>
                        </div>
                        <select name="IdAvalista" class="form-control">
                            <?php while ($row = mysqli_fetch_array($resultAvalista)):; ?>
                                <option value="<?php echo $row[0]; ?>">
                                    <?php echo $row[2]; ?></option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </div>


                <div class="col-sm-3">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Gestor</label>
                        </div>
                        <select name="IdGestor" class="form-control">
                            <?php while ($row = mysqli_fetch_array($resultGestor)):; ?>
                                <option value="<?php echo $row[0]; ?>">
                                    <?php echo $row[1]; ?></option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </div>


                <div class="col-sm-3">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Destino</label>
                        </div>
                        <select name="IdDestino" class="form-control">
                            <?php while ($row = mysqli_fetch_array($resultDestinoCredito)):; ?>
                                <option value="<?php echo $row[0]; ?>">
                                    <?php echo $row[1]; ?></option>
                            <?php endwhile; ?>
                        </select>
                    </div>
                </div>


            </div>

            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-2">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">#ID</span>
                        </div>
                        <input type="number" class="form-control" value="<?php echo $IdSelecionado; ?>"
                               name="IdSelecionado" disabled>
                    </div>
                </div>


                <div class="col-sm-6">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Nome:</span>
                        </div>
                        <?php $count = mysqli_num_rows($result);
                        $row = mysqli_fetch_assoc($result);
                        $NomeSelecionado = $row['Nome'];
                        ?>
                        <input type="text" class="form-control" value="<?php echo $NomeSelecionado; ?>" name="IdCliente"
                               disabled required>
                    </div>
                </div>


                <div class="col-sm-4">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Montante</span>
                        </div>
                        <input type="text" name="ValorSolicitado" class="form-control" placeholder="1000"
                               style="text-align: right; font-size: 18px" aria-label="Amount (to the nearest dollar)">

                        <div class="input-group-append">
                            <span class="input-group-text">.00 Mt</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <center><input type="submit" name="btn-salvar" class="btn btn-success btn-block btn-sm" value="Solicitar">
                    </center>
                </div>
            </div>

        </div>


</div>
</form>
</div>


<div class="card-body">
    <div class="table-responsive" style="width: 100%">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Nome Completo</th>
                <th>Selecionar</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($resultCliente)) { ?>
                <tr>
                    <td><?php echo $row['IdCliente']; ?></td>
                    <td><?php echo $row['Nome']; ?></td>
                    <td>
                        <center><a class="btn btn-info btn-sm" name="IdSelecionado" id="botao"
                                   href="pro-PedidoCredito.php?Selecionar=<?php echo $row['IdCliente']; ?>">Selecionar</a>
                        </center>
                    </td>
                </tr>
            <?php } ?>
            </tbody>
        </table>
    </div>
</div>

<!-- <script>
    $('dataTable').click(function (e) {
        alert($(e.target).text()); // using jQuery
    })
</script> -->

<!-- Footer -->
<?php require_once 'footer.php'; ?>  </body>
</html>