<?php
session_start();

unset($_SESSION['NomeUsuario']);
session_unset();
session_destroy();
header('location:index.php');