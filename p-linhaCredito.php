<?php
include_once('dbcon.php');

//APAGAR
if (isset($_GET['Remover'])) {
    $Id = $_GET['Remover'];
    $sql = mysqli_query($conn, "DELETE FROM tb_linhacredito WHERE IdLinha=$Id");
}


if (isset($_POST['btn-register'])) {
    //clean user input to prevent sql injection
    $LinhaDeCredito = $_POST['LinhaDeCredito'];
    $LinhaDeCredito = strip_tags($LinhaDeCredito);
    $LinhaDeCredito = htmlspecialchars($LinhaDeCredito);

    $TaxaJuro = $_POST['TaxaJuro'];
    $TaxaJuro = strip_tags($TaxaJuro);
    $TaxaJuro = htmlspecialchars($TaxaJuro);

    $Prazo = $_POST['Prazo'];
    $Prazo = strip_tags($Prazo);
    $Prazo = htmlspecialchars($Prazo);

    $PlanoPagamento = $_POST['PlanoPagamento'];
    $PlanoPagamento = strip_tags($PlanoPagamento);
    $PlanoPagamento = htmlspecialchars($PlanoPagamento);

    $IdSucursal = $_POST['IdSucursal'];
    $IdSucursal = strip_tags($IdSucursal);
    $IdSucursal = htmlspecialchars($IdSucursal);

    echo($IdSucursal);

    $sql = "insert into tb_linhacredito(LinhaDeCredito,TaxaJuro,PlanoPagamento,Prazo,IdSucursal)
                values('$LinhaDeCredito','$TaxaJuro','$PlanoPagamento','$Prazo','$IdSucursal')";
    if (mysqli_query($conn, $sql)) {
        $successMsg = 'Registado com Sucesso!!!';
    } else {
        echo 'Error ' . mysqli_error($conn);
    }
    // 
    // x

}

$resultSucursais = mysqli_query($conn, "SELECT * FROM tb_sucursal");
$results = mysqli_query($conn, "SELECT * FROM tb_linhacredito");
?>


<?php require_once 'header.php'; ?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <h2>Linha de Cr&eacute;dito</h2>
</ol>

<!-- FORMULARIO -->
<div style="width: auto; margin: 50px auto;">
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
                <div class="col-sm-5">
                    <select name="IdSucursal" class="form-control">
                        <?php while ($row = mysqli_fetch_array($resultSucursais)):; ?>
                            <option value="<?php echo $row[0]; ?>">
                                <?php echo $row[1]; ?></option>
                        <?php endwhile; ?>
                    </select></div>
                <div class="col-sm-4"><input type="text" name="LinhaDeCredito" placeholder="Linha De Credito"
                                             class="form-control" required>


                </div>
                <div class="col-sm-3"><input type="number" name="TaxaJuro" step="0.1" placeholder="Taxa de Juro"
                                             class="form-control" required></div>
            </div>


            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-5"><input type="number" name="Prazo" placeholder="N° de Prestacoes" min="0" max="100"
                                             class="form-control" required></div>
                <div class="col-sm-5"><!-- <input type="text" name="PlanoPagamento"
                                             placeholder="Plano de Pagamento EX: Semanal" class="form-control" required> -->
                    <select name="PlanoPagamento" class="form-control">
                        <option value="SEMANAL">SEMANAL</option>
                        <option value="MENSAL">MENSAL</option>
                    </select>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <center><input width="auto" type="submit" name="btn-register" value="Registar"
                                   class="btn btn-success btn-block"></center>
                </div>


            </div>

        </div>


        </td>
        </tr>
        </table>
</div>


</form>
</div>


<div class="card-body">
    <div class="table-responsive table-hover">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>LinhaDeCredito</th>
                <th>Taxa de Juro (%)</th>
                <th>N° de Prestacoes</th>
                <th>Plano de Pagamento</th>
                <th>Sucursal</th>
                <th>Remover</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($results)) { ?>

                <tr>
                    <td><?php echo $row['IdLinha']; ?></td>
                    <td><?php echo $row['LinhaDeCredito']; ?></td>
                    <td><?php echo $row['TaxaJuro']; ?></td>
                    <td><?php echo $row['Prazo']; ?></td>
                    <td><?php echo $row['PlanoPagamento']; ?></td>
                    <td><?php echo $row['IdSucursal']; ?></td>
                    <td>
                        <center><a class="btn btn-danger btn-sm"
                                   href="p-linhaCredito.php?Remover=<?php echo $row['IdLinha']; ?>">Remover</a></center>
                    </td>

                </tr>

            <?php } ?>
            </tbody>
        </table>
    </div>
</div>


</form>
</div>
</div>

<!-- Footer -->
<?php require_once 'footer.php'; ?>
</body>
</html>