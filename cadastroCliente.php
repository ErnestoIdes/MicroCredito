<?php
include_once('dbcon.php');
require_once 'header.php';



//APAGAR
if (isset($_GET['Remover'])) {
    $Id = $_GET['Remover'];
    $sql = mysqli_query($conn, "DELETE FROM tab_cliente WHERE IdCliente=$Id");
}


if (isset($_POST['btn-salvar'])) {
    //clean user input to prevent sql injection
    $Nome = $_POST['Nome'];
    $Nome = strip_tags($Nome);
    $Nome = htmlspecialchars($Nome);

    $Sexo = $_POST['Sexo'];
    $Sexo = strip_tags($Sexo);
    $Sexo = htmlspecialchars($Sexo);

    $DataNascimento = $_POST['DataNascimento'];
    $DataNascimento = strip_tags($DataNascimento);
    $DataNascimento = htmlspecialchars($DataNascimento);

    $Naturalidade = $_POST['Naturalidade'];
    $Naturalidade = strip_tags($Naturalidade);
    $Naturalidade = htmlspecialchars($Naturalidade);

    $Cidade = $_POST['Cidade'];
    $Cidade = strip_tags($Cidade);
    $Cidade = htmlspecialchars($Cidade);

    $Quarteirao = $_POST['Quarteirao'];
    $Quarteirao = strip_tags($Quarteirao);
    $Quarteirao = htmlspecialchars($Quarteirao);

    $Bairro = $_POST['Bairro'];
    $Bairro = strip_tags($Bairro);
    $Bairro = htmlspecialchars($Bairro);

    $CasaNumero = $_POST['CasaNumero'];
    $CasaNumero = strip_tags($CasaNumero);
    $CasaNumero = htmlspecialchars($CasaNumero);

    $ContactoCliente = $_POST['ContactoCliente'];
    $ContactoCliente = strip_tags($ContactoCliente);
    $ContactoCliente = htmlspecialchars($ContactoCliente);

    $Estado = $_POST['Estado'];
    $Estado = strip_tags($Estado);
    $Estado = htmlspecialchars($Estado);

    $TipoDocu = $_POST['TipoDocu'];
    $TipoDocu = strip_tags($TipoDocu);
    $TipoDocu = htmlspecialchars($TipoDocu);

    $Documento = $_POST['Documento'];
    $Documento = strip_tags($Documento);
    $Documento = htmlspecialchars($Documento);

    $DataEmissao = $_POST['DataEmissao'];
    $DataEmissao = strip_tags($DataEmissao);
    $DataEmissao = htmlspecialchars($DataEmissao);

    $LocalEmissao = $_POST['LocalEmissao'];
    $LocalEmissao = strip_tags($LocalEmissao);
    $LocalEmissao = htmlspecialchars($LocalEmissao);

    $MembrosFamiliares = $_POST['MembrosFamiliares'];
    $MembrosFamiliares = strip_tags($MembrosFamiliares);
    $MembrosFamiliares = htmlspecialchars($MembrosFamiliares);

    $Profissao = $_POST['Profissao'];
    $Profissao = strip_tags($Profissao);
    $Profissao = htmlspecialchars($Profissao);

    $Observacao = $_POST['Observacao'];
    $Observacao = strip_tags($Observacao);
    $Observacao = htmlspecialchars($Observacao);;

    $NomePai = $_POST['NomePai'];
    $NomePai = strip_tags($NomePai);
    $NomePai = htmlspecialchars($NomePai);

    $NomeMae = $_POST['NomeMae'];
    $NomeMae = strip_tags($NomeMae);
    $NomeMae = htmlspecialchars($NomeMae);

    $Conjugue = $_POST['Conjugue'];
    $Conjugue = strip_tags($Conjugue);
    $Conjugue = htmlspecialchars($Conjugue);


    $ContactoConjugue = $_POST['ContactoConjugue'];
    $ContactoConjugue = strip_tags($ContactoConjugue);
    $ContactoConjugue = htmlspecialchars($ContactoConjugue);

    $DataReg = date("Y-m-d h:i:s");

    $IdGestor = $_POST['IdGestor'];
    $IdGestor = strip_tags($IdGestor);
    $IdGestor = htmlspecialchars($IdGestor);


    $IdUsuario = $_SESSION['IdUsuario'];


    $sql = "insert into tab_cliente (Nome,Sexo,Naturalidade , Cidade, Bairro, Quarteirao,CasaNumero,ContactoCliente,Estado,NomePai,NomeMae,Conjugue,ContactoConjugue,TipoDocu,Documento,LocalEmissao,MembrosFamiliares,Profissao,Observacao,DataReg,DataEmissao,DataNascimento,IdGestor,IdUsuario)
      values('$Nome','$Sexo','$Naturalidade','$Cidade','$Bairro', '$Quarteirao','$CasaNumero','$ContactoCliente','$Estado','$NomePai','$NomeMae','$Conjugue','$ContactoConjugue','$TipoDocu','$Documento','$LocalEmissao','$MembrosFamiliares','$Profissao','$Observacao','$DataReg','$DataEmissao','$DataNascimento','$IdGestor','$IdUsuario')";

    if (mysqli_query($conn, $sql)) {
        $successmsg = 'Registado com Sucesso!!!';
    } else {
        echo 'Error ' . mysqli_error($conn);
    }


}
$resultGestor = mysqli_query($conn, "SELECT * FROM tb_gestor");
$results = mysqli_query($conn, "SELECT * FROM tab_cliente");




 //PDF
function buscarDadosPdf(){
    echo("SIMA");



};




                //PDF
if (isset($_POST["gerarPdf"])) {  
    require_once 'Relatorios/rCliente.php' ;

// $r = mysqli_query($conn, "SELECT * FROM tab_cliente");   
//     $table = '
//     <table border="1" cellspacing="0" cellpadding="0" style="width:100%;">
//        <tr>
//                 <th>Nome</th>
//                 <th>Cidade</th>
//                 <th>Contacto</th>
//                 <th>Profissao</th>
//                 <th>Data Nasc.</th>
//                 <th>Remover</th>
//             </tr>
//             </thead>
//             <tbody>';
//         while ($row = mysqli_fetch_array($r)) { 
// $table.'
//                 <tr>
//                     <td>'.$row['Nome'].'</td>
//                     <td>'.$row['Cidade'].'</td>
//                     <td>'.$row['ContactoCliente'].'</td>
//                     <td>'.$row['Profissao'].'</td>
//                     <td>'.$row['DataNascimento'].'</td>
                   
//                 </tr>
//     </table>
//     ';  
// }
//     echo $table;



// 
}







?>


<?php require_once 'header.php'; ?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <h2>Cadastrar Cliente</h2>
    </li>
<a href="Relatorios/rCliente.php" class=" fa fa-file-pdf-o fa-lg btn-link btn-lg" target="_blank"></a>
</ol>


<!--FORMULARIO-->
<div style="width: auto; margin: 50px auto;">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
        <?php
        if (isset($successmsg)) {
                ?>
            <div class="alert alert-success">
                <span class="glyphicon glyphicon-info-sign"></span>
                <?php echo $successmsg; ?>
            </div>
            <?php
        }
        ?>


        <div class="form-control">
            <!-- style="background-color: #0d0d0d" -->
            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-4"><input type="text" name="Nome" class="form-control" placeholder="Nome" required>
                </div>
                <div class="col-sm-2"><input type="text" name="Cidade" class="form-control" placeholder="Residencia (Cidade)" required></div>
                <div class="col-sm-2"><input type="number" min="800000000" max="899999999" name="ContactoCliente" class="form-control" placeholder="Ex: 8xxxxxxxx" autocomplete="off" required></div>
                <div class="col-sm-2"><input type="text" name="Naturalidade" class="form-control input-sm""
                    placeholder="Naturalidade" required>
                </div>
                <div class="col-sm-2"><input type="number" name="Quarteirao" min="1" max="9999" class="form-control"
                                             placeholder="Quarteirao N°" required></div>

            </div>


            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-2"><select id="Estado" name="Estado" class="form-control">
                        <option value="Solteiro(a)">Solteiro(a)</option>
                        <option value="Casado(a)">Casado(a)</option>
                        <option value="Maritalmente">Maritalmente</option>
                        <option value="Viuvo(a)">Viuvo(a)</option>
                    </select></div>
                <div class="col-sm-2"><select id="Sexo" name="Sexo" class="form-control">
                        <option value="Masculino">Masculino</option>
                        <option value="Feminino">Feminino</option>
                    </select></div>
                <div class="col-sm-2"><input type="number" name="CasaNumero" min="0" max="999999" class="form-control"
                                             placeholder="Casa N*" autocomplete="off" required></div>
                <div class="col-sm-3">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Nascimento</span>
                        </div>
                        <input type="date" class="form-control" name="DataNascimento"
                                             placeholder="Data Nascimento"
                                             required>
                    </div>
                </div>





                   
                <div class="col-sm-3"><input type="text" name="Profissao" class="form-control" placeholder="Profissao"
                                             required></div>

            </div>


            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-2"><input type="text" name="Bairro" class="form-control" placeholder="Bairro"
                                             required></div>
                <div class="col-sm-1"><select class="form-control" name="TipoDocu" required>
                        <option value="BI">BI</option>
                        <option value="Talao">Talao</option>
                        <option value="DIRE">DIRE</option>
                        <option value="Passaporte">Passaporte</option>
                        <option value="Carta de Conducao">Carta de Conducao</option>
                    </select></div>
                <div class="col-sm-3"><input type="text" name="Documento" class="form-control"
                                             placeholder="Documento Numero"
                                             autocomplete="off" required></div>
                <div class="col-sm-3">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Emissao</span>
                        </div>
                        <input type="date" name="DataEmissao" class="form-control" required>
                    </div>
                </div>
                <div class="col-sm-3"><input type="number" name="MembrosFamiliares" min="1" max="100"
                                             class="form-control"
                                             placeholder="Familiares Ex: 4" required></div>


            </div>


            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-2"><input type="text" name="LocalEmissao" class="form-control"
                                             placeholder="LocalEmissao Ex: Maputo" required></div>
                <div class="col-sm-3"><input type="text" name="NomePai" class="form-control" placeholder="Nome-Pai"
                                             required></div>
                <div class="col-sm-3"><input type="text" name="NomeMae" class="form-control" placeholder="Nome-Mae"
                                             required></div>
                <div class="col-sm-2"><input type="text" name="Conjugue" class="form-control" placeholder="Conjugue">
                </div>
                <div class="col-sm-2"><input type="number" name="ContactoConjugue" class="form-control"
                                             placeholder="Cell-Conjugue" autocomplete="off"></div>

            </div>


            <div style="margin-bottom: 10px" class="row">
                <div class="col-sm-7"><textarea class="form-control" name="Observacao" placeholder="Observacao"
                                                style="height:500px width:400"></textarea></div>
                <div class="col-sm-4">
                <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <label class="input-group-text" for="inputGroupSelect01">Gestor:</label>
                        </div>
                        <select name="IdGestor" class="form-control">
                        <?php while ($row = mysqli_fetch_array($resultGestor)):; ?>
                            <option value="<?php echo $row[0]; ?>">
                                <?php echo $row[1]; ?></option>
                        <?php endwhile; ?>
                    </select>
                    </div>

                </div>
               
            </div>

            <div class="row">
                <div class="col-sm-12" align="center"><input type="submit" name="btn-salvar " value="Salvar"
                                                             class="btn btn-success btn-block btn-sm"></div>
            </div>

        </div>

    </form>
</div>
</div>


<div class="card-body">
    <div class="table-responsive">
        <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
            <tr>
                <th>Nome</th>
                <th>Cidade</th>
                <th>Contacto</th>
                <th>Profissao</th>
                <th>Data Nasc.</th>
                <th>Remover</th>
            </tr>
            </thead>
            <tbody>
            <?php while ($row = mysqli_fetch_array($results)) { ?>

                <tr>
                    <td><?php echo $row['Nome']; ?></td>
                    <td><?php echo $row['Cidade']; ?></td>
                    <td><?php echo $row['ContactoCliente']; ?></td>
                    <td><?php echo $row['Profissao']; ?></td>
                    <td><?php echo $row['DataNascimento']; ?></td>
                    <td>
                        <center><a class="btn btn-danger btn-sm"
                                   href="cadastroCliente.php?Remover=<?php echo $row['IdCliente']; ?>">Remover</a>
                        </center>
                    </td>
                </tr>

            <?php } ?>
            </tbody>
        </table>
    </div>
</div>


<!-- RODAPE-->
<?php require_once 'footer.php'; ?>
</body>
</html>