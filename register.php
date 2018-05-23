<?php
include_once('dbcon.php');

$error = false;
if (isset($_POST['btn-register'])) {
    //clean user input to prevent sql injection
    $NomeUsuario = $_POST['NomeUsuario'];
    $NomeUsuario = strip_tags($NomeUsuario);
    $NomeUsuario = htmlspecialchars($NomeUsuario);

    $CargoUsuario = $_POST['CargoUsuario'];
    $CargoUsuario = strip_tags($CargoUsuario);
    $CargoUsuario = htmlspecialchars($CargoUsuario);

    $Email = $_POST['Email'];
    $Email = strip_tags($Email);
    $Email = htmlspecialchars($Email);

    $SalarioBruto = $_POST['SalarioBruto'];
    $SalarioBruto = strip_tags($SalarioBruto);
    $SalarioBruto = htmlspecialchars($SalarioBruto);

    $Endereco = $_POST['Endereco'];
    $Endereco = strip_tags($Endereco);
    $Endereco = htmlspecialchars($Endereco);

    $Contacto = $_POST['Contacto'];
    $Contacto = strip_tags($Contacto);
    $Contacto = htmlspecialchars($Contacto);


    $Password = $_POST['Password'];
    $Password = strip_tags($Password);
    $Password = htmlspecialchars($Password);

    //validate
    if (empty($NomeUsuario)) {
        $error = true;
        $errorNomeUsuario = 'Introduza o nome Completo do Usuario';
    }


    if (empty($CargoUsuario)) {
        $error = true;
        $errorCargoUsuario = 'Introduza o cargo do Usuario';
    }

    if (empty($Endereco)) {
        $error = true;
        $errorEndereco = 'Introduza o Endereco do Usuario';
    }

    if (empty($Contacto)) {
        $error = true;
        $errorContacto = 'Introduza o Contacto do Usuario';
    }


    if (!filter_var($Email, FILTER_VALIDATE_EMAIL)) {
        $error = true;
        $errorEmail = 'Introduza um email valido';
    }

    if (empty($Password)) {
        $error = true;
        $errorPassword = 'Introduza a Senha';
    } elseif (strlen($Password) < 6) {
        $error = true;
        $errorPassword = 'A senha deve ter no minimo 6 caracteres';
    }

    //encrypt password with md5
    $Password = md5($Password);

    //insert data if no error
    if (!$error) {
        $sql = "insert into tab_usuarios(NomeUsuario, CargoUsuario, Email ,SalarioBruto, Endereco, Contacto, Password)
                values('$NomeUsuario', '$CargoUsuario', '$Email' ,'$SalarioBruto','$Endereco', '$Contacto', '$Password')";
        if (mysqli_query($conn, $sql)) {
            $successMsg = 'Registado com Sucesso. <a href="index.php">Clique aqui para aceder</a>';
        } else {
            echo 'Error ' . mysqli_error($conn);
        }
    }

}

?>








<?php require_once 'header.php'; ?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <li class="breadcrumb-item">
        <center><h2>Registar</h2></center>
    </li>

</ol>


<!--FORMULARIO-->

<div style="width: 500px; margin: 50px auto;">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
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
        <div class="form-group">
            <input type="text" name="NomeUsuario" class="form-control" placeholder="Nome do Usuario">
            <span class="text-danger"><?php if (isset($errorNomeUsuario)) echo $errorNomeUsuario; ?></span>
            <br>

            <input type="text" name="CargoUsuario" class="form-control" placeholder="Cargo Usuario">
            <span class="text-danger"><?php if (isset($errorCargoUsuario)) echo $errorCargoUsuario; ?></span>
            <br>

            <input type="number" name="SalarioBruto" class="form-control" placeholder="Salario Bruto">
            <span class="text-danger"><?php if (isset($errorSalarioBruto)) echo $errorSalarioBruto; ?></span>
            <br>

            <input type="text" name="Endereco" class="form-control" placeholder="Endereco Ex: Av. Eduardo Mondlane">
            <span class="text-danger"><?php if (isset($errorEndereco)) echo $errorEndereco; ?></span>
            <br>
            <input type="number" name="Contacto" class="form-control" autocomplete="off"
                   placeholder="Contacto 8xxxxxxxx">
            <span class="text-danger"><?php if (isset($errorContacto)) echo $errorContacto; ?></span>
        </div>

        <div class="form-group">
            <input type="Email" name="Email" class="form-control" autocomplete="off"
                   placeholder="E-mail Ex: John@xxxxx.com">
            <span class="text-danger"><?php if (isset($errorEmail)) echo $errorEmail; ?></span>
        </div>


        <input type="Password" name="Password" class="form-control" autocomplete="off" placeholder="********">
        <span class="text-danger"><?php if (isset($errorPassword)) echo $errorPassword; ?></span>
</div>
<div class="form-group">
    <center><input type="submit" name="btn-register" value="Registar" class="btn btn-primary"></center>
</div>
<hr/>
<a href="index.php">Entrar</a>
</form>
</div>
</div>


<!-- Footer-->
<?php require_once 'footer.php'; ?>
</body>
</html>