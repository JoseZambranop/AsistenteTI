<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.TreeView1 = New System.Windows.Forms.TreeView()
        Me.PictureBox1 = New System.Windows.Forms.PictureBox()
        Me.btnvendedor = New System.Windows.Forms.Button()
        Me.btndespachador = New System.Windows.Forms.Button()
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'TreeView1
        '
        Me.TreeView1.BackColor = System.Drawing.Color.MidnightBlue
        Me.TreeView1.Location = New System.Drawing.Point(-3, 127)
        Me.TreeView1.Name = "TreeView1"
        Me.TreeView1.Size = New System.Drawing.Size(334, 300)
        Me.TreeView1.TabIndex = 4
        '
        'PictureBox1
        '
        Me.PictureBox1.Image = Global.AsistenteTI.My.Resources.Resources.splendor
        Me.PictureBox1.Location = New System.Drawing.Point(-3, 0)
        Me.PictureBox1.Name = "PictureBox1"
        Me.PictureBox1.Size = New System.Drawing.Size(334, 129)
        Me.PictureBox1.TabIndex = 3
        Me.PictureBox1.TabStop = False
        '
        'btnvendedor
        '
        Me.btnvendedor.Location = New System.Drawing.Point(51, 233)
        Me.btnvendedor.Name = "btnvendedor"
        Me.btnvendedor.Size = New System.Drawing.Size(94, 32)
        Me.btnvendedor.TabIndex = 5
        Me.btnvendedor.Text = "vendedor"
        Me.btnvendedor.UseVisualStyleBackColor = True
        '
        'btndespachador
        '
        Me.btndespachador.Location = New System.Drawing.Point(176, 233)
        Me.btndespachador.Name = "btndespachador"
        Me.btndespachador.Size = New System.Drawing.Size(106, 32)
        Me.btndespachador.TabIndex = 6
        Me.btndespachador.Text = "despachador"
        Me.btndespachador.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 17.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(329, 426)
        Me.Controls.Add(Me.btndespachador)
        Me.Controls.Add(Me.btnvendedor)
        Me.Controls.Add(Me.TreeView1)
        Me.Controls.Add(Me.PictureBox1)
        Me.Font = New System.Drawing.Font("Segoe UI", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Form1"
        CType(Me.PictureBox1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents TreeView1 As TreeView
    Friend WithEvents PictureBox1 As PictureBox
    Friend WithEvents btnvendedor As Button
    Friend WithEvents btndespachador As Button
End Class
