﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vehiculos.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/Estilo.css" rel="stylesheet" />

    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            color: #0000FF;
            font-size: x-large;
        }
        
        .auto-style7 {
            color: #000099;
            font-size: large;
        }
        .auto-style8 {
            width: 520px;
            height: 654px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <br />
            <span class="auto-style5"><strong>INFORMACION DE VEHICULOS</strong></span><br />
            <br />
            <br />
            <span class="auto-style7"><strong>INGRESE USUARIO Y CONTRASEÑA VALIDOS</strong></span><br />
            <br />


            Email<br />
            <asp:TextBox ID="Temail" runat="server"></asp:TextBox>
            <br />
            Clave<br />
            <asp:TextBox ID="Tclave" runat="server" ></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            <asp:Button ID="Bingresar" runat="server" Text="Ingresar" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="lmensaje" runat="server" Text="*"></asp:Label>
            <br />
            <br />
            <img alt="" class="auto-style8" src="Imagenes/OptimusPrime.png" /><br />
            <br />
            <br />


        </div>
    </form>
</body>
</html>
