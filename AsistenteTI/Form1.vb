Public Class Form1
    Public ado As Ado = New Ado()
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
    End Sub

    Private Sub btnvendedor_Click(sender As Object, e As EventArgs) Handles btnvendedor.Click
        ado.almacenarValor(btnvendedor.Text)
    End Sub

    Private Sub btndespachador_Click(sender As Object, e As EventArgs) Handles btndespachador.Click
        ado.almacenarValor(btndespachador.Text)
    End Sub
End Class
