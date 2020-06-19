<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="TrabajoPracticoCRUD.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: #0066FF;
            height: 34px;
        }
        .auto-style3 {
            width: 177px;
            text-align: center;
            color: #0066FF;
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
        }
        .auto-style6 {
            text-align: center;
            height: 34px;
        }
    </style>
</head>
<body style="height: 213px; width: 839px;">
    <center>
    <form id="form1" runat="server">
        <div style="background-color: #FFFFFF">
            <table style="width:400PX;">
                <tr>
                    <td class="auto-style2" colspan="2"><strong style="color: #FFFFFF; background-color: #0099FF;">INICIAR SESIÓN</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #FFFFFF; background-color: #0099FF;">Nombre</td>
                    <td class="auto-style4">
                            
                        <asp:TextBox ID="txtUser" runat="server" BackColor="White" BorderColor="#0099FF" BorderStyle="Double" ForeColor="Black"></asp:TextBox>
                            
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="color: #FFFFFF; background-color: #0099FF;">Clave</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtpass" runat="server" BackColor="White" BorderColor="#0099FF" BorderStyle="Double" ForeColor="Black" CausesValidation="True" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <strong style="color: #FF0000">
                        <asp:Button ID="btnEnviar" runat="server" Text="Iniciar sesión" BackColor="White" BorderColor="#0099FF" BorderStyle="Double" Font-Bold="True" ForeColor="#0099FF" OnClick="btnEnviar_Click" />
                        </strong>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Label ID="lblError" runat="server" BackColor="White" ForeColor="Red"></asp:Label>
        </div>
    </form>
  </center>
</body>
</html>
