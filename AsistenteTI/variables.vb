Public Class variables
    Private descripcion As String
    Private url As String
    Private valor As String

    Public Sub setdescripcion(descripcion1 As String)
        descripcion = descripcion1
    End Sub
    Public Function getdescripcion() As String
        Return descripcion
    End Function
    Public Sub seturl(url1 As String)
        url = url1
    End Sub
    Public Function geturl() As String
        Return url
    End Function
    Public Sub setvalor(valor1 As String)
        valor = valor1
    End Sub
    Public Function getvalor() As String
        Return valor
    End Function


End Class
