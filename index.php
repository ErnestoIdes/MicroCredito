<?php
session_start();
include_once('dbcon.php');

$error = false;
if (isset($_POST['btn-login'])) {
    $Email = trim($_POST['Email']);
    $Email = htmlspecialchars(strip_tags($Email));

    $Password = trim($_POST['Password']);
    $Password = htmlspecialchars(strip_tags($Password));

    if (empty($Email)) {
        $error = true;
        $errorEmail = 'Introduza o E-mail';
    } elseif (!filter_var($Email, FILTER_VALIDATE_EMAIL)) {
        $error = true;
        $errorEmail = 'Introduza um E-mail Valido';
    }

    if (empty($Password)) {
        $error = true;
        $errorPassword = 'Introduza a Senha';
    } elseif (strlen($Password) < 8) {
        $error = true;
        $errorPassword = 'A Senha deve conter 8 Caracteres';
    }


    if (!$error) {
        $Password = md5($Password);
        $sql = "select * from tab_usuarios where email='$Email' ";
        $result = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($result);
        $row = mysqli_fetch_assoc($result);
        if ($count == 1 && $row['Password'] == $Password) {
            $_SESSION['IdUsuario'] = $row['IdUsuario'];
            $_SESSION['NomeUsuario'] = $row['NomeUsuario'];
            $_SESSION['CargoUsuario'] = $row['CargoUsuario'];
            $_SESSION['SalarioBruto'] = $row['SalarioBruto'];
            $_SESSION['Email'] = $row['NomeUsuario'];
            $_SESSION['Endereco'] = $row['Endereco'];
            $_SESSION['Contacto'] = $row['Contacto'];
            $_SESSION['IdSucursal'] = $row['IdSucursal'];
            $_SESSION['Foto'] = $row['Foto'];
            header('location: home.php');
        } else {
            $errorMsg = 'E-mail ou Senha Invalido!!!';
        }
    }

}

?>

<html>
<head>
    <title>PHP Entrar</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
</head>
<body class="bg-dark"><!--  background="digital-tran.JPG -->
<div >
    <div  class="form-control" style="width: 500px; margin: 50px auto; border-radius: 10px" >
        <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off">
            <center><h2>Login</h2></center>
            <?php
            if (isset($errorMsg)) {
                ?>
                <div class="alert alert-danger">
                    <span class="glyphicon glyphicon-info-sign"></span>
                    <?php echo $errorMsg; ?>
                </div>
                <?php
            }
            ?>

           

                <div class="form-group">
                    <label for="Email" class="control-label">Email</label>
                    <input type="email" name="Email" class="form-control form-control-lg" autocomplete="off" aria-describedby="emailHelp">
                    <span class="text-danger"><?php if (isset($errorEmail)) echo $errorEmail; ?></span>
                </div>
                <div class="form-group">
                    <label for="Password" class="control-label">Password</label>
                    <input type="password" value="" name="Password" class="form-control form-control-lg" autocomplete="off">
                    <span class="text-danger"><?php if (isset($errorPassword)) echo $errorPassword; ?>     </span>
                </div>
                <div class="form-group">
                    <center><input type="submit" name="btn-login" value="Login" class="btn btn-primary btn-block"></center>
                </div>
                <a href="recuperarSenha.html">Recuperar Senha</a>
            </div>


        </form>
   
</div>
</body>
</html>