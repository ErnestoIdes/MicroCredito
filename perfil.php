<?php require_once 'header.php'; ?>
<!-- Breadcrumbs-->
<ol class="breadcrumb">
    <h2>Perfil</h2>
</ol>

<div style="width: 600px; margin: 50px auto;">


    <table class="table">

        <tr>
            <td><label>Nome:</label></td>
            <td><input type="text" name="NomeUsuario" class="form-control" disabled
                       value="<?php echo $_SESSION['NomeUsuario']; ?>"></td>
            <td rowspan="5"><img src="img/user.png" alt="Usuario" style="width:300px;height:300px;"></td>
        </tr>

        <tr>
            <td><label>Cargo:</label></td>
            <td><input type="text" disabled name="CargoUsuario" class="form-control"
                       value="<?php echo $_SESSION['CargoUsuario']; ?>"></td>
        </tr>

        <tr>
            <td><label>Endereco:</label></td>
            <td><input type="text" name="Endereco" class="form-control" disabled
                       value="<?php echo $_SESSION['Endereco']; ?>"></td>
        </tr>

        <tr>
            <td><label>Salario:</label></td>
            <td><input type="text" disabled name="SalarioBruto" class="form-control"
                       value="<?php echo $_SESSION['SalarioBruto']; ?>"></td>
        </tr>

        <tr>
            <td><label>Contacto:</label></td>
            <td><input type="text" name="Contacto" class="form-control" value="<?php echo $_SESSION['Contacto']; ?>"
                       disabled></td>
        </tr>
    </table>
    <div>
        <input type="text" class="form-control" name="Email">
        <input type="password" class="form-control" name="Senha">

    </div>
    <br>

    <div class="form-group">
        <center><input type="submit" name="btn-register" value="Actualizar" class="btn btn-primary"></center>
    </div>


</div>


<!-- Footer -->
<?php require_once 'footer.php'; ?>
</body>
</html>