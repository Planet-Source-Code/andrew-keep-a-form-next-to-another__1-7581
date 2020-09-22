VERSION 5.00
Begin VB.Form frm2 
   Caption         =   "Form # 2"
   ClientHeight    =   3210
   ClientLeft      =   60
   ClientTop       =   330
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3210
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Left            =   1680
      Top             =   2040
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
Attribute VB_Name = "frm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Timer1_Timer()
Text1.Text = Me.Left
Text2.Text = Me.Top
End Sub
Private Sub Form_Unload(Cancel As Integer)
'when form 2 unloads form 1 does also
Unload frm1
End Sub
Private Sub Timer2_Timer()
frm1.Left = Me.Left + 4805
frm1.Top = Me.Top
End Sub
