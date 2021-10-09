Imports System.Data.SqlClient

Public Class _Default
    Inherits Page

    Dim conexao As New SqlConnection("Data Source=.;
                                      Initial Catalog=ASP_Crud;
                                      User ID=;
                                      Password=")

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ProdutoNome = txtNomeProduto.Text
        Dim Especificacao = txtEspecificacaoProduto.Text
        Dim Unidade = dpdUnidades.SelectedValue
        Dim Cor = rdbCor.SelectedValue
        Dim Data As DateTime = txtDataProduto.Text
        Dim Quantidade As Double = txtQuantidadeProduto.Text
        Dim Status = chkStatus.SelectedValue

        conexao.Open()
        Dim comando As New SqlCommand("INSERT INTO Info_Produtos (Nome_Item, Especificacao, Unidade, Cor, Data_Reposicao, Quantidade, Status) 
                                       VALUES ('" & ProdutoNome & "','" & Especificacao & "', '" & Unidade & "', '" & Cor & "', '" & Data & "', 
                                       '" & Quantidade & "', '" & Status & "')", conexao)
        comando.ExecuteNonQuery()
        conexao.Close()
        ListarProdutos()
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Produto Cadastrado com Sucesso');", True)
    End Sub

    Protected Sub ListarProdutos()
        Dim comando As New SqlCommand("SELECT * FROM Info_Produtos", conexao)
        Dim sd As New SqlDataAdapter(comando)
        Dim dt As New DataTable

        sd.Fill(dt)

        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub btnAtualizar_Click(sender As Object, e As EventArgs) Handles btnAtualizar.Click
        Dim ProdutoID = txtProdutoID.Text
        Dim ProdutoNome = txtNomeProduto.Text
        Dim Especificacao = txtEspecificacaoProduto.Text
        Dim Unidade = dpdUnidades.SelectedValue
        Dim Cor = rdbCor.SelectedValue
        Dim Data As DateTime = txtDataProduto.Text
        Dim Quantidade As Double = txtQuantidadeProduto.Text
        Dim Status = chkStatus.SelectedValue

        conexao.Open()
        Dim comando As New SqlCommand("UPDATE Info_Produtos SET Nome_Item = '" & ProdutoNome & "', Especificacao = '" & Especificacao & "', Unidade = '" & Unidade & "', Cor =  '" & Cor & "', Data_Reposicao = '" & Data & "', Quantidade = '" & Quantidade & "', Status = '" & Status & "' WHERE Produto_ID = '" & ProdutoID & "'", conexao)
        comando.ExecuteNonQuery()
        conexao.Close()
        ListarProdutos()
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Produto atualizado com Sucesso');", True)
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ListarProdutos()
    End Sub

    Protected Sub btnDeletar_Click(sender As Object, e As EventArgs) Handles btnDeletar.Click
        Dim ProdutoID = txtProdutoID.Text

        conexao.Open()
        Dim comando As New SqlCommand("DELETE Info_Produtos WHERE Produto_ID = '" & ProdutoID & "'", conexao)
        comando.ExecuteNonQuery()
        conexao.Close()
        ListarProdutos()
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Produto excluído com Sucesso');", True)
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim ProdutoID = txtProdutoID.Text
        Dim comando As New SqlCommand("SELECT * FROM Info_Produtos WHERE Produto_ID = '" & ProdutoID & "'", conexao)
        Dim sd As New SqlDataAdapter(comando)
        Dim dt As New DataTable
        Dim dr As SqlDataReader

        conexao.Open()

        dr = comando.ExecuteReader

        Do While dr.Read
            txtNomeProduto.Text = dr("Nome_Item")
            txtEspecificacaoProduto.Text = dr("Especificacao")
            dpdUnidades.SelectedValue = dr("Unidade")
            rdbCor.SelectedValue = dr("Cor")
            txtDataProduto.Text = dr("Data_Reposicao")
            txtQuantidadeProduto.Text = dr("Quantidade")
            chkStatus.SelectedValue = dr("Status")
        Loop

        conexao.Close()

        sd.Fill(dt)

        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub btnExibirTodos_Click(sender As Object, e As EventArgs) Handles btnExibirTodos.Click
        ListarProdutos()
    End Sub
End Class