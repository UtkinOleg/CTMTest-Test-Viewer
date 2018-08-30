object progr: Tprogr
  Left = 219
  Top = 175
  BorderStyle = bsNone
  Caption = 'progr'
  ClientHeight = 61
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 282
    Height = 61
    Align = alClient
    Shape = bsFrame
  end
  object prbar: TProgressBar
    Left = 8
    Top = 40
    Width = 265
    Height = 9
    Min = 0
    Max = 100
    TabOrder = 0
  end
  object st: TStaticText
    Left = 48
    Top = 16
    Width = 197
    Height = 17
    Caption = 'Идет передача данных... Подождите...'
    TabOrder = 1
  end
end
