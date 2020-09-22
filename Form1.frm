VERSION 5.00
Begin VB.Form frm1 
   Caption         =   "Form # 1"
   ClientHeight    =   3210
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   1680
      Top             =   2040
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set So Movable"
      Height          =   375
      Left            =   480
      TabIndex        =   4
      Top             =   960
      Width           =   1335
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1200
      Top             =   2040
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1560
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   240
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   0
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Top"
      Height          =   255
      Left            =   1560
      TabIndex        =   2
      Top             =   0
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Left"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   1335
   End
End
Attribute VB_Name = "frm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer2.Enabled = True
frm2.Timer2.Enabled = True
End Sub
Private Sub Form_Load()
'if you want to lock the forms in place, preset form1 and form2 to be Moveable = False
frm2.Show
Me.Left = 2890
Me.Top = 3030
frm2.Left = 7695
frm2.Top = 3030
End Sub
Private Sub Form_Unload(Cancel As Integer)
'when form 1 unloads form 2 does also
Unload frm2
End Sub
Private Sub Timer1_Timer()
'tells the forms locations
Text1.Text = Me.Left
Text2.Text = Me.Top
End Sub

Private Sub Timer2_Timer()
'a$ = frm2.Text1.Text - Text1.Text
frm2.Left = Me.Left + 4805
frm2.Top = Me.Top
End Sub
