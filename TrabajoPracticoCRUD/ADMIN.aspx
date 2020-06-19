<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADMIN.aspx.cs" Inherits="TrabajoPracticoCRUD.ADMIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
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
            <asp:HyperLink ID="HyperLink6" runat="server" CssClass="auto-style1" ForeColor="#3399FF">BIENVENIDO ADMINISTRADOR</asp:HyperLink>
            </strong>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="#3399FF">LISTADO CLIENTES</asp:HyperLink>
             <br />
             <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_cliente" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id_cliente" HeaderText="id_cliente" InsertVisible="False" ReadOnly="True" SortExpression="id_cliente" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ITES_1ConnectionString %>" DeleteCommand="DELETE FROM [Clientes] WHERE [id_cliente] = @id_cliente" InsertCommand="INSERT INTO [Clientes] ([nombre], [apellido], [direccion], [telefono], [tipo_cliente]) VALUES (@nombre, @apellido, @direccion, @telefono, @tipo_cliente)" SelectCommand="SELECT * FROM [Clientes]" UpdateCommand="UPDATE [Clientes] SET [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [tipo_cliente] = @tipo_cliente WHERE [id_cliente] = @id_cliente">
                <DeleteParameters>
                    <asp:Parameter Name="id_cliente" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="tipo_cliente" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="tipo_cliente" Type="Int32" />
                    <asp:Parameter Name="id_cliente" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" ForeColor="#3399FF">CARGAR NUEVO CLIENTE</asp:HyperLink>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="id_cliente" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333">
                <EditItemTemplate>
                    id_cliente:
                    <asp:Label ID="id_clienteLabel1" runat="server" Text='<%# Eval("id_cliente") %>' />
                    <br />
                    nombre:
                    <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
                    <br />
                    apellido:
                    <asp:TextBox ID="apellidoTextBox" runat="server" Text='<%# Bind("apellido") %>' />
                    <br />
                    direccion:
                    <asp:TextBox ID="direccionTextBox" runat="server" Text='<%# Bind("direccion") %>' />
                    <br />
                    telefono:
                    <asp:TextBox ID="telefonoTextBox" runat="server" Text='<%# Bind("telefono") %>' />
                    <br />
                    tipo_cliente:
                    <asp:TextBox ID="tipo_clienteTextBox" runat="server" Text='<%# Bind("tipo_cliente") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    nombre:
                    <asp:TextBox ID="nombreTextBox" runat="server" Text='<%# Bind("nombre") %>' />
                    <br />
                    apellido:
                    <asp:TextBox ID="apellidoTextBox" runat="server" Text='<%# Bind("apellido") %>' />
                    <br />
                    direccion:
                    <asp:TextBox ID="direccionTextBox" runat="server" Text='<%# Bind("direccion") %>' />
                    <br />
                    telefono:
                    <asp:TextBox ID="telefonoTextBox" runat="server" Text='<%# Bind("telefono") %>' />
                    <br />
                    tipo_cliente:
                    <asp:TextBox ID="tipo_clienteTextBox" runat="server" Text='<%# Bind("tipo_cliente") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id_cliente:
                    <asp:Label ID="id_clienteLabel" runat="server" Text='<%# Eval("id_cliente") %>' />
                    <br />
                    nombre:
                    <asp:Label ID="nombreLabel" runat="server" Text='<%# Bind("nombre") %>' />
                    <br />
                    apellido:
                    <asp:Label ID="apellidoLabel" runat="server" Text='<%# Bind("apellido") %>' />
                    <br />
                    direccion:
                    <asp:Label ID="direccionLabel" runat="server" Text='<%# Bind("direccion") %>' />
                    <br />
                    telefono:
                    <asp:Label ID="telefonoLabel" runat="server" Text='<%# Bind("telefono") %>' />
                    <br />
                    tipo_cliente:
                    <asp:Label ID="tipo_clienteLabel" runat="server" Text='<%# Bind("tipo_cliente") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="#0099FF">LISTADO PRODUCTOS</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_producto" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id_producto" HeaderText="id_producto" InsertVisible="False" ReadOnly="True" SortExpression="id_producto" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ITES_1ConnectionString %>" DeleteCommand="DELETE FROM [Productos] WHERE [id_producto] = @id_producto" InsertCommand="INSERT INTO [Productos] ([descripcion], [cantidad], [precio]) VALUES (@descripcion, @cantidad, @precio)" SelectCommand="SELECT [id_producto], [descripcion], [cantidad], [precio] FROM [Productos]" UpdateCommand="UPDATE [Productos] SET [descripcion] = @descripcion, [cantidad] = @cantidad, [precio] = @precio WHERE [id_producto] = @id_producto">
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
            <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" ForeColor="#3399FF">CARGAR NUEVO PRODUCTO</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataKeyNames="id_producto" DataSourceID="SqlDataSource2" DefaultMode="Insert" ForeColor="#333333">
                <EditItemTemplate>
                    id_producto:
                    <asp:Label ID="id_productoLabel1" runat="server" Text='<%# Eval("id_producto") %>' />
                    <br />
                    descripcion:
                    <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
                    <br />
                    cantidad:
                    <asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' />
                    <br />
                    precio:
                    <asp:TextBox ID="precioTextBox" runat="server" Text='<%# Bind("precio") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    descripcion:
                    <asp:TextBox ID="descripcionTextBox" runat="server" Text='<%# Bind("descripcion") %>' />
                    <br />
                    cantidad:
                    <asp:TextBox ID="cantidadTextBox" runat="server" Text='<%# Bind("cantidad") %>' />
                    <br />
                    precio:
                    <asp:TextBox ID="precioTextBox" runat="server" Text='<%# Bind("precio") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id_producto:
                    <asp:Label ID="id_productoLabel" runat="server" Text='<%# Eval("id_producto") %>' />
                    <br />
                    descripcion:
                    <asp:Label ID="descripcionLabel" runat="server" Text='<%# Bind("descripcion") %>' />
                    <br />
                    cantidad:
                    <asp:Label ID="cantidadLabel" runat="server" Text='<%# Bind("cantidad") %>' />
                    <br />
                    precio:
                    <asp:Label ID="precioLabel" runat="server" Text='<%# Bind("precio") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CERRAR_SESION.aspx">Cerrar Sesión</asp:HyperLink>
             <br />
            <br />
        </div>
    </form>
  </center>
</body>
</html>
