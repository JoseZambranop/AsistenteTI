Public Class Ado
    Private variable As variables = New variables()
    Dim conexion As conexion = New conexion()
    Dim ds As DataSet
    Public Sub almacenarValor(ByVal valor As String)
        variable.setvalor(valor)
        Dim f2 As New Menu()
        f2.TreeView1 = mostrardatosArbol(f2.TreeView1)
        f2.Show()
    End Sub
    Function mostrardatosArbol(ByVal TreeView2 As TreeView)
        conexion.Conectar()
        ds = conexion.Consulta("SELECT * FROM retornarForm('" + variable.getvalor + "')")
        TreeView2.Nodes.Clear()
        Dim GrandfatherNOde As TreeNode = TreeView2.Nodes.Add("Menu")
        Dim fatherNode As TreeNode = GrandfatherNOde.Nodes.Add(variable.getvalor)
        For Each fila As DataRow In ds.Tables(0).Rows()
            variable.setdescripcion(fila(0).ToString)
            variable.seturl(fila(0).ToString)
            Dim sonNode As TreeNode = fatherNode.Nodes.Add(variable.getdescripcion)
        Next
        Return TreeView2
    End Function
End Class
