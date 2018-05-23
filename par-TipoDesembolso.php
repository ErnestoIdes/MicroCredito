<?php
include_once('dbcon.php');

//APAGAR
if (isset($_GET['Remover'])) {
    $Id = $_GET['Remover'];
    $sql = mysqli_query($conn, "DELETE FROM tb_formapagamento WHERE IdFormaPagamento=$Id");

}


if (isset($_POST['btn-register'])) {

    $FormaPagamento = $_POST['FormaPagamento'];
    $IdSucursal = $_POST['IdSucursal'];

    //insert data if no error
    if (!$error) {
        $sql = "insert into tb_formapagamento(FormaPagamento,IdSucursal)
                values('$IdSucursal','$FormaPagamento')";
        if (mysqli_query($conn, $sql)) {
            $successMsg = 'Registado com Sucesso!!!';
        } else {
            echo 'Error ' . mysqli_error($conn);
        }
    }


}
$resultSucursais = mysqli_query($conn, "SELECT * FROM tb_sucursal");
$resultFormaPagamento = mysqli_query($conn, "SELECT * FROM tb_formapagamento");
$resultTaxas = mysqli_query($conn, "SELECT * FROM tb_taxas");

?>

<?php require_once 'header.php'; ?>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <div>
        <a href="par-TipoDesembolso.php" class="btn btn-primary">Tipo de Desembolso</a>
        <a href="par-DestinoCredito.php" class="btn btn-primary">Destino do Credito</a>
        <a href="par-TipoGarantia.php" class="btn btn-primary">Tipos de Garantias</a>
        <a href="par-MotivoRegeita.php" class="btn btn-primary">Motivo para regeitar</a>
        <a href="par-TipoLancamento.php" class="btn btn-primary">Tipos de Lancamento</a>
        <a href="par-Taxas.php" class="btn btn-primary">Taxas</a></div>
</ol>


<div style="width: auto; margin: 0px auto;">
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


        <center><h1>TIPO DE DESEMBOLSO</h1></center>


        <div class="form-control">
            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-2"><label class="form-control">Sucursal</label></div>
                <div class="col-sm-4"><select name="IdSucursal" class="form-control">

                        <?php while ($row = mysqli_fetch_array($resultSucursais)):; ?>
                            <option
                                value="<?php echo $row[0]; ?>">                             <?php echo $row[1]; ?></option>
                        <?php endwhile; ?>
                    </select></div>
                <div class="col-sm-2"><label class="form-control">Forma de Pagamento</label></div>
                <div class="col-sm-4"><input type="text" name="FormaPagamento" class="form-control" required
                                             placeholder="Ex: Cheque"></div>
            </div>

            <div  class="row">
                <div class="col-sm-12">
                    <center><input width="auto" type="submit" name="btn-register" value="Registar"
                                   class="btn btn-success btn-sm btn-block"></center>
                </div>
            </div>


        </div>
    </form>
</div>

<br>
<!-- Tavela de taxas -->
<div class="card-body">
    <div class="table-responsive">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">

            <thead class="thead-dark">
            <tr>
                <th>#ID</th>
                <th>Forma de Pagamento</th>
                <th>Sucursal</th>
                <th>Remover</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($resultFormaPagamento)) { ?>

                <tr>
                    <td><?php echo $row['IdFormaPagamento']; ?></td>
                    <td><?php echo $row['FormaPagamento']; ?></td>
                    <td><?php echo $row['IdSucursal']; ?></td>
                    <td>
                        <center><a class="btn btn-danger btn-sm"
                                   href="par-TipoDesembolso.php?Remover=<?php echo $row['IdFormaPagamento']; ?>">Remover</a>
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