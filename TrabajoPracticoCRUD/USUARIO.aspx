<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="USUARIO.aspx.cs" Inherits="TrabajoPracticoCRUD.USUARIO" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 72px;
        }
        .auto-style2 {
            color: #3399FF;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            
            <br />
            <strong>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style2" ForeColor="#3399FF">Benvenido Usuario

            </asp:HyperLink>
            </strong>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="#3399FF">LISTADO PRODUCTOS</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_producto" DataSourceID="SqlDataSource1" GridLines="None" CssClass="auto-style1" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITES_1ConnectionString %>" DeleteCommand="DELETE FROM [Productos] WHERE [id_producto] = @id_producto" InsertCommand="INSERT INTO [Productos] ([descripcion], [cantidad], [precio]) VALUES (@descripcion, @cantidad, @precio)" SelectCommand="SELECT [id_producto], [descripcion], [cantidad], [precio] FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [descripcion] = @descripcion, [cantidad] = @cantidad, [precio] = @precio WHERE [id_producto] = @id_producto">
                <DeleteParameters>
                    <asp:Parameter Name="id_producto" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="cantidad" Type="Int32" />
                    <asp:Parameter Name="precio" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="cantidad" Type="Int32" />
                    <asp:Parameter Name="precio" Type="Decimal" />
                    <asp:Parameter Name="id_producto" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CERRAR_SESION.aspx">Cerrar Sesión</asp:HyperLink>
        </div>
    </form>
   </center>
</body>
</html>
