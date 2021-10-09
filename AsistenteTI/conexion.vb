Imports System.Data.SqlClient
Public Class conexion

    Public conexion As SqlConnection = New SqlConnection("Data Source=DESKTOP-43J80DV\SQLEXPRESS; Initial Catalog=AsistenteTI; Integrated Security=SSPI;")
    Private cmb As SqlCommandBuilder
    Public ds As DataSet = New DataSet()
    Public da As SqlDataAdapter
    Public comando As SqlCommand


    Public Sub Conectar()
        Try
            conexion.Open()
            MessageBox.Show("Conectado")
        Catch ex As Exception
            MessageBox.Show("Error al conectar" + ex.ToString)
        Finally
            conexion.Close()
        End Try
    End Sub
    Function Consulta(ByVal sql As String)
        ds.Tables.Clear()
        da = New SqlDataAdapter(sql, conexion)
        cmb = New SqlCommandBuilder(da)
        da.Fill(ds, "datosE")
        conexion.Close()
        Return ds
    End Function
End Class
