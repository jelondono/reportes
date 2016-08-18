<?php

header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=Reporte_Personal_usuarios.xls");


		$conexion=mysql_connect("localhost","root","");
		mysql_select_db("ejemplo_pdf",$conexion);		


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>LISTA DE USUARIOS</title>
</head>
<body>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td colspan="6" bgcolor="skyblue"><CENTER><strong>REPORTE DE LA TABLA USUARIOS</strong></CENTER></td>
  </tr>
  <tr bgcolor="red">
    <td><strong>CODIGO</strong></td>
    <td><strong>NOMBRE</strong></td>
    <td><strong>APELLIDO</strong></td>
    <td><strong>PAIS</strong></td>
    <td><strong>EDAD</strong></td>
    <td><strong>DNI</strong></td>
  </tr>
  
<?PHP
		
$sql=mysql_query("select cod_usu,nombre,Apellido,Pais,edad,dni from usuarios");
while($res=mysql_fetch_array($sql)){		

	$codigo=$res["cod_usu"];
	$nombre=$res["nombre"];
	$Apellido=$res["Apellido"];
	$Pais=$res["Pais"];
	$edad=$res["edad"];
	$dni=$res["dni"];					

?>  
 <tr>
	<td><?php echo $codigo; ?></td>
	<td><?php echo $nombre; ?></td>
	<td><?php echo $Apellido; ?></td>
	<td><?php echo $Pais; ?></td>
	<td><?php echo $edad; ?></td>
	<td><?php echo $dni; ?></td>                     
 </tr> 
  <?php
}
  ?>
</table>
</body>
</html>