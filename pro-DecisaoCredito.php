<?php
include_once('dbcon.php');
require_once 'header.php';


$IdCliente = 0;
$NomeCliente = '';
$ProfissaoCliente = '';
$ContactoCliente = '';
$ValorSolicitado = 0;
$IdCredito = 0;

$resultPedidos = mysqli_query($conn, "SELECT * FROM tab_credito_1solicitado WHERE Situacao='Solicitado'");
$resultlinhaCredito = mysqli_query($conn, "SELECT * FROM tb_linhacredito");
?>
<?php
if (isset($_GET["Editar"])) {
    $IdCredito = $_GET["Editar"];
    $rec = mysqli_query($conn, "SELECT * FROM tab_credito_1solicitado WHERE IdCredito=$IdCredito");
    $record = mysqli_fetch_array($rec);
    $IdCliente = $record['IdCliente'];
    $ValorSolicitado = $record['ValorSolicitado'];
    $IdLinha = $record['IdLinha'];

    //Acesso aos Dados do cliente
    $Cliente = mysqli_query($conn, "SELECT * FROM tab_cliente WHERE IdCliente=$IdCliente");
    $cl = mysqli_fetch_array($Cliente);
    $NomeCliente = $cl['Nome'];
    $ProfissaoCliente = $cl['Profissao'];
    $ContactoCliente = $cl['ContactoCliente'];
}

if (isset($_GET["Aprovar"])) {
    $IdCredito = $_GET["Aprovar"];
//BUSCAR DA TABELA DAS SOLICITACOES
    $Cliente = mysqli_query($conn, "SELECT * FROM tab_credito_1solicitado WHERE IdCredito=$IdCredito");
    $cl = mysqli_fetch_array($Cliente);
    $IdCliente = $cl['IdCliente'];
    $IdCredito = $cl['IdCredito'];
//ACTUALIZAR ESTADO PARA APROVADO
    $sql = mysqli_query($conn, "UPDATE tab_credito_1solicitado SET Situacao='Aprovado' WHERE IdCredito=$IdCredito");
//INSERIR NA TABELA DOS APROVADOS
    $DataAprovado = date("Y-m-d h:i:s");
    $IdUsuario = $_SESSION['IdUsuario'];
    $IdSucursal = $_SESSION['IdSucursal'];
    $sql = "insert into tab_credito_7aprovado(IdCliente,IdCredito,DataAprovado,IdUsuario,IdSucursal)
        values('$IdCliente','$IdCredito','$DataAprovado','$IdUsuario','$IdSucursal')";


    if (mysqli_query($conn, $sql)) {
        $successMsg = 'APROVADO COM SUCESSO';
    } else {
        echo 'Ocorreu um Erro';
    }
}


if (isset($_GET['Remover'])) {
    //ACTUALIZAR ESTADO PARA REJEITADO
    $Id = $_GET['Remover'];
    $sql = mysqli_query($conn, "UPDATE tab_credito_1solicitado SET Situacao='Rejeitado' WHERE IdCredito=$Id");
    //INSERIR NA TABELA REJEITADOS
    $IdCliente = $IdCliente;
    $IdCliente = $IdCliente;
    $IdCredito = $IdCredito;
    $IdMotivo = "";
    $DataRejeita = date("Y-m-d h:i:s");
    $IdUsuario = $_SESSION['IdUsuario'];
    $IdSucursal = $_SESSION['IdSucursal'];

    $sql = "insert into tab_credito_7rejeitado(IdCliente,IdCredito,IdMotivo,DataRejeita,IdUsuario,IdSucursal)
        values('$IdCliente','$IdCredito','$IdMotivo','$DataRejeita','$IdUsuario','$IdSucursal')";
    if (mysqli_query($conn, $sql)) {
        $successMsg = 'REJEITADO COM SUCESSO';
    } else {
        echo 'Ocorreu um Erro';
    }
}

?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <div>
        <a href="pro-PedidoCredito.php" class="btn btn-primary ">Pedido de Credito</a>
        <a href="pro-DecisaoCredito.php" class="btn btn-primary active">Decisao do Credito</a>
        <a href="pro-SituacaoCliente.php" class="btn btn-primary">Situacao do cliente</a>
        <a href="pro-GestaoCredito.php" class="btn btn-primary">Gestao de Credito</a>
    </div>
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

        <div class="form-control">

            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-3">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">#ID_Cliente</span>
                        </div>
                       <input type="number" value="<?php echo($IdCliente) ?>"
                                             class="form-control" disabled>
                    </div>

                </div>
                
                <div class="col-sm-3">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">#ID_Credito</span>
                        </div>
                       <input type="number" name="IdCredito" value="<?php echo($IdCredito) ?>"
                                             class="form-control" disabled>
                    </div>

                </div>
               
                 <div class="col-sm-6">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Linha</label>
                        </div>
                       <select name="IdLinha" class="form-control"
                                              value="<?php echo($IdLinha) ?>">
                        <?php while ($row = mysqli_fetch_array($resultlinhaCredito)):; ?>
                            <option value="<?php echo $row[0]; ?>">
                                <?php echo $row[1]; ?></option>
                        <?php endwhile; ?>
                    </select>
                    </div>
                </div>
                </div>

            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-6">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Nome:</span>
                        </div>
                       <input type="text" name="NomeCliente" value="<?php echo($NomeCliente) ?>"
                                             class="form-control" disabled>
                    </div>

                </div>
                

                  <div class="col-sm-6">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Montante</span>
                        </div>
                       <input type="number" name="ValorSolicitado" value="<?php echo($ValorSolicitado) ?>" class="form-control">
                        <div class="input-group-append">
                            <span class="input-group-text">.00 Mt</span>
                        </div>
                    </div>
                </div>





            </div>

            <div class="row">
                <div class="col-sm-12">
                    <center>
                        <a class="fa fa-info btn btn-info btn-lg"
                           href="pro-DecisaoCredito.php?Info=<?php echo $row['IdCredito']; ?>"
                           data-toggle="modal" data-target="#InfoModal"></a>


                        <button class="fa fa-save btn btn-success btn-lg" name="Aprovar">Aprovar Alteracao
                        </button>


                        <!-- <button class="fa fa-remove btn btn-danger btn-lg" name="Rejeitado"></button> -->


                    </center>
                </div>
            </div>

        </div>


        <!-- Tavela de Pedidos de Credito -->
        <div class="card-body">
            <div class="table-responsive table-hover">
                <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">
                    <tr>
                        <th>#ID</th>
                        <th>Nome</th>
                        <th>Valor</th>
                        <th>Taxa</th>
                        <th>Data Pedido</th>
                        <th>...</th>
                    </tr>
                    </thead>

                    <tbody>

                    <?php while ($row = mysqli_fetch_array($resultPedidos)) { ?>
                        <tr>
                            <td><?php echo $row['IdCredito']; ?></td>
                            <td><?php echo $row['IdCliente']; ?></td>
                            <td><?php echo $row['ValorSolicitado']; ?></td>
                            <td><?php echo $row['TaxaJuro']; ?></td>
                            <td><?php echo $row['DataReg']; ?></td>
                            <td>
                                <div align="right">
                                    <a class="fa fa-edit btn btn-success"
                                       href="pro-DecisaoCredito.php?Editar=<?php echo $row['IdCredito']; ?>">Editar</a>
                                    <!-- <a class="fa fa-remove btn btn-danger btn-lg" href="pro-DecisaoCredito.php?Rejeitado=<?php echo $row['IdCredito']; ?>"></a> -->
                                    <a class="fa fa-save btn btn-success "
                                       href="pro-DecisaoCredito.php?Aprovar=<?php echo $row['IdCredito']; ?>">Aprovar</a>

                                    <a class="btn btn-danger btn-sm"
                                       href="pro-DecisaoCredito.php?Remover=<?php echo $row['IdCredito']; ?>">Rejeitar</a>
                                </div>

                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</div>


<!-- INFORMACAO MODAL -->

<div class="modal fade bd-example-modal-lg" id="InfoModal" tabindex="-1" role="dialog"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg"
    " role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Dados Cliente/ Pedidos</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>


        <div class="form-control">
            <!-- class="modal-body" -->
            <?php echo($IdCredito) ?>
            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-4"><input type="text" name="Nome" class="form-control"
                                             value="<?php echo($NomeCliente); ?>" disabled></div>
                <div class="col-sm-4"><input type="text" name="ProfissaoCliente"
                                             value="<?php echo($ProfissaoCliente); ?>" class="form-control" disabled>
                </div>
                <div class="col-sm-4"><input type="number" name="ContactoCliente"
                                             value="<?php echo($ContactoCliente); ?>" class="form-control" disabled>
                </div>
            </div>

            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-4"><label class="form-control">Creditos Vigentes</label></div>
                <div class="col-sm-2"><input type="text" name="CreditosVigentes" class="form-control" disabled></div>
                <div class="col-sm-4"><label class="form-control">Creditos Rejeitados</label></div>
                <div class="col-sm-2"><input type="text" name="CreditosRejeitados" class="form-control" disabled></div>
            </div>
        </div>


        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
        </div>
    </div>
</div>
</div>


<!-- Footer -->
<?php require_once 'footer.php'; ?>
</body>
</html>

        