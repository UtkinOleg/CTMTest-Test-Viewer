object CommentDlg: TCommentDlg
  Left = 223
  Top = 150
  Width = 850
  Height = 526
  Caption = 'Комментарий'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 457
    Width = 842
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 5
      Width = 81
      Height = 25
      Cancel = True
      Caption = 'Закрыть'
      ModalResult = 2
      TabOrder = 0
    end
    object Button2: TButton
      Left = 360
      Top = 5
      Width = 81
      Height = 25
      Hint = 'Печать (Ctrl-P)'
      Caption = 'Печать'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object BitBtn1: TButton
      Left = 272
      Top = 5
      Width = 81
      Height = 25
      Hint = 'Экспорт информации в приложение Microsoft Word (Ctrl-W)'
      Caption = 'Экспорт'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object RO: TRxRichEdit
    Left = 0
    Top = 21
    Width = 842
    Height = 436
    Align = alClient
    HideSelection = False
    HideScrollBars = False
    ReadOnly = True
    TabOrder = 1
    OnKeyDown = ROKeyDown
    OnKeyUp = ROKeyUp
    OnSelectionChange = ROSelectionChange
  end
  object TrackBar1: TTrackBar
    Left = 0
    Top = 0
    Width = 842
    Height = 21
    Align = alTop
    Enabled = False
    LineSize = 0
    Orientation = trHorizontal
    PageSize = 0
    Frequency = 1
    Position = 0
    SelEnd = 0
    SelStart = 0
    TabOrder = 2
    ThumbLength = 16
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = TrackBar1Change
  end
  object PrintDialog1: TPrintDialog
    Left = 320
    Top = 456
  end
  object ActionList1: TActionList
    Left = 352
    Top = 456
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 16464
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16471
      OnExecute = Action2Execute
    end
  end
end
