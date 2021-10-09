<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="ASP.NET_CRUD._Default" %>

<%@ Register assembly="DevExpress.Web.Bootstrap.v18.2, Version=18.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.Bootstrap" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v18.2, Version=18.2.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding: 15px;">

        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 150px">
                    &nbsp;</td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px; height: 26px">
                    <asp:Label ID="txtNome" runat="server" Font-Bold="True" Font-Size="Medium" Text="Nome do Produto"></asp:Label>
                </td>
                <td style="height: 26px">
                    <asp:TextBox ID="txtNomeProduto" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="txtID" runat="server" Font-Bold="True" Font-Size="Medium" Text="ID do Produto"></asp:Label>
                &nbsp;&nbsp;
                    <asp:TextBox ID="txtProdutoID" runat="server" Font-Size="Medium" Width="207px"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 22px; width: 150px">
                    <asp:Label ID="txEspecificacao" runat="server" Font-Bold="True" Font-Size="Medium" Text="Especificação"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:TextBox ID="txtEspecificacaoProduto" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnBuscar" runat="server" BackColor="#2D6CEA" BorderColor="White" Font-Size="Medium" ForeColor="White" Height="30px" Text="Buscar" Width="100px" />
                &nbsp;
                    <asp:Button ID="btnDeletar" runat="server" BackColor="#2D6CEA" BorderColor="White" Font-Size="Medium" ForeColor="White" Height="30px" Text="Deletar" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px">
                    <asp:Label ID="txtUnidade" runat="server" Font-Bold="True" Font-Size="Medium" Text="Unidades"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dpdUnidades" runat="server" Font-Size="Medium" Width="200px">
                        <asp:ListItem>Polegadas</asp:ListItem>
                        <asp:ListItem>Centímetros</asp:ListItem>
                        <asp:ListItem>m²</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px">
                    <asp:Label ID="txtCor" runat="server" Font-Bold="True" Font-Size="Medium" Text="Cor"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="rdbCor" runat="server" Font-Size="Medium" RepeatDirection="Horizontal">
                        <asp:ListItem>Vermelho</asp:ListItem>
                        <asp:ListItem>Azul</asp:ListItem>
                        <asp:ListItem>Preto</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 150px">
                    <asp:Label ID="txtData" runat="server" Font-Bold="True" Font-Size="Medium" Text="Data de criação"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtDataProduto" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px">
                    <asp:Label ID="txtQuantidade" runat="server" Font-Bold="True" Font-Size="Medium" Text="Quantidade"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantidadeProduto" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px; height: 22px;">
                    <asp:Label ID="txtStatus" runat="server" Font-Bold="True" Font-Size="Medium" Text="Status"></asp:Label>
                </td>
                <td style="height: 22px">
                    <asp:CheckBoxList ID="chkStatus" runat="server" RepeatDirection="Horizontal" Height="19px" Width="175px">
                        <asp:ListItem>Irregular</asp:ListItem>
                        <asp:ListItem>Regular</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 150px; height: 20px"></td>
                <td style="height: 20px">
                    <asp:Button ID="Button1" runat="server" BackColor="#2D6CEA" BorderColor="White" Font-Size="Medium" ForeColor="White" Height="30px" Text="Inserir" Width="100px" />
                &nbsp;
                    <asp:Button ID="btnAtualizar" runat="server" BackColor="#2D6CEA" BorderColor="White" Font-Size="Medium" ForeColor="White" Height="30px" Text="Atualizar" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Button ID="btnExibirTodos" runat="server" BackColor="#2D6CEA" BorderColor="White" Font-Size="Medium" ForeColor="White" Height="30px" Text="Exibir todos os produtos" Width="209px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>

        <hr />

        <div align="center">

            <asp:GridView ID="GridView1" runat="server" Width="80%">
                <HeaderStyle BackColor="#2D6CEA" ForeColor="White" />
            </asp:GridView>

        </div>

    </div>

</asp:Content>
