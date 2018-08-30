object SelectForm: TSelectForm
  Left = 283
  Top = 147
  Width = 502
  Height = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object LB: TListBox
    Left = 0
    Top = 0
    Width = 494
    Height = 422
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    ParentFont = False
    Sorted = True
    Style = lbOwnerDrawVariable
    TabOrder = 0
    OnDblClick = LBDblClick
    OnDrawItem = LBDrawItem
    OnKeyPress = LBKeyPress
    OnMeasureItem = LBMeasureItem
  end
  object Panel1: TPanel
    Left = 0
    Top = 422
    Width = 494
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 99
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object Button2: TButton
      Left = 112
      Top = 8
      Width = 99
      Height = 25
      Cancel = True
      Caption = 'Отмена'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
