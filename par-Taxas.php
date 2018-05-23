<?php
include_once('dbcon.php');

//APAGAR
if (isset($_GET['Remover'])) {
    $Id = $_GET['Remover'];
    $sql = mysqli_query($conn, "DELETE FROM tb_taxas WHERE Id=$Id");
}

if (isset($_POST['btn-register'])) {

    //clean user input to prevent sql injection
    $Preparo = $_POST['Preparo'];
    $Preparo = strip_tags($Preparo);
    $Preparo = htmlspecialchars($Preparo);

    $Mora = $_POST['Mora'];
    $Mora = strip_tags($Mora);
    $Mora = htmlspecialchars($Mora);

    $DescontoPelaAntecipacao = $_POST['DescontoPelaAntecipacao'];
    $DescontoPelaAntecipacao = strip_tags($DescontoPelaAntecipacao);
    $DescontoPelaAntecipacao = htmlspecialchars($DescontoPelaAntecipacao);

    $Outros_Impostos = $_POST['Outros_Impostos'];
    $Outros_Impostos = strip_tags($Outros_Impostos);
    $Outros_Impostos = htmlspecialchars($Outros_Impostos);

    $INSS_Trabalhador = $_POST['INSS_Trabalhador'];
    $INSS_Trabalhador = strip_tags($INSS_Trabalhador);
    $INSS_Trabalhador = htmlspecialchars($INSS_Trabalhador);

    $INSS_Empresa = $_POST['INSS_Empresa'];
    $INSS_Empresa = strip_tags($INSS_Empresa);
    $INSS_Empresa = htmlspecialchars($INSS_Empresa);

    $IRPS = $_POST['IRPS'];
    $IRPS = strip_tags($IRPS);
    $IRPS = htmlspecialchars($IRPS);

    $IdSucursal = $_POST['IdSucursal'];
    $IdSucursal = strip_tags($IdSucursal);
    $IdSucursal = htmlspecialchars($IdSucursal);


  
   
        $sql = "insert into tb_taxas(IdSucursal,Preparo,Mora,DescontoPelaAntecipacao,Outros_Impostos,INSS_Empresa,INSS_Trabalhador,IRPS)
                values('$IdSucursal','$Preparo','$Mora','$DescontoPelaAntecipacao','$Outros_Impostos','$INSS_Empresa','$INSS_Trabalhador','$IRPS')";
        if (mysqli_query($conn, $sql)) {
            $successMsg = 'Registado com Sucesso!!!';
        } else {
            echo 'Error ' . mysqli_error($conn);
        }
    


}
$resultSucursais = mysqli_query($conn, "SELECT * FROM tb_sucursal");
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
        <a href="par-Taxas.php" class="btn btn-primary">Taxas</a>
    </div>
</ol>


<div style="width: auto; margin: 0px auto;">
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


        <center><h1>TAXAS</h1></center>

<div class="form-control">

<div style="margin-bottom: 10px" class="row">
  <div class="col-sm-4">
  <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Sucursal:</span>
  </div>
 <select name="IdSucursal" class="form-control">

                                    <?php while ($row = mysqli_fetch_array($resultSucursais)):; ?>
                                        <option
                                            value="<?php echo $row[0]; ?>">                             <?php echo $row[1]; ?></option>
                                    <?php endwhile; ?>
                                </select>
</div>
</div>

  <div class="col-sm-4">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="basic-addon1">Valor Preparos</span>
          </div>
  <input type="number" name="Preparo" class="form-control" min="0" required>
  </div>
  </div>

  <div class="col-sm-4">
  <div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Taxa Mora/Dia</span>
  </div>
  <input type="number" name="Mora" class="form-control" min="0" required>
</div>
</div>
</div>

<div style="margin-bottom: 10px" class="row">
  <div class="col-sm-4"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Taxa antecipacao/Dia</span>
  </div>
  <input type="number" name="DescontoPelaAntecipacao" class="form-control" min="0"
                                       required>
</div>
</div>


  <div class="col-sm-4"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">Outros Impostos</span>
  </div>
 <input type="number" name="Outros_Impostos" class="form-control" min="0" required>
</div></div>
  <div class="col-sm-4"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">IRPS</span>
  </div>
  <input type="number" name="IRPS" class="form-control" min="0" required>
</div></div>
</div>



<div style="margin-bottom: 10px" class="row">
  <div class="col-sm-4"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">INSS Empresa</span>
  </div>
 <input type="number" name="INSS_Empresa" class="form-control" min="0" required>
</div></div>



  <div class="col-sm-4"><div class="input-group mb-3">
  <div class="input-group-prepend">
    <span class="input-group-text" id="basic-addon1">INSS Trabalhador</span>
  </div>
  <input type="number" name="INSS_Trabalhador" class="form-control" min="0" required>
</div></div>
 
</div>





<div class="row">
  <div class="col-sm-12"><input width="auto" type="submit" name="btn-register" value="Registar" class="btn btn-success btn-block"></div>
</div>

</div>



     
    </form>
</div>


<!-- Tavela de taxas -->
<div class="card-body">
    <div class="table-responsive">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">

            <thead class="thead-dark">
            <tr>
                <th>Sucursal</th>
                <th>Preparo</th>
                <th>Mora</th>
                <th>D. Antecipacao</th>
                <th>Outros Impostos</th>
                <th>INSS Trab.</th>
                <th>INSS Emp.</th>
                <th>IRPS</th>
                <th>Remover</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($resultTaxas)) { ?>

                <tr>
                    <td><?php echo $row['IdSucursal']; ?></td>
                    <td><?php echo $row['Preparo']; ?></td>
                    <td><?php echo $row['Mora']; ?></td>
                    <td><?php echo $row['DescontoPelaAntecipacao']; ?></td>
                    <td><?php echo $row['Outros_Impostos']; ?></td>
                    <td><?php echo $row['IRPS']; ?></td>
                    <td><?php echo $row['INSS_Empresa']; ?></td>
                    <td><?php echo $row['INSS_Trabalhador']; ?></td>
                    <td>
                        <center><a class="btn btn-danger btn-sm" href="par-Taxas.php?Remover=<?php echo $row['Id']; ?>">Remover</a>
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