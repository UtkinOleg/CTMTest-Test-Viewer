object ExtDlg: TExtDlg
  Left = 247
  Top = 178
  BorderStyle = bsNone
  Caption = 'Отправка результатов'
  ClientHeight = 60
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 298
    Height = 60
    Align = alClient
    Shape = bsFrame
  end
  object pb: TProgressBar
    Left = 8
    Top = 40
    Width = 281
    Height = 9
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 40
    Top = 16
    Width = 223
    Height = 17
    Caption = 'Подождите... Идет отправка результатов...'
    TabOrder = 1
  end
end
