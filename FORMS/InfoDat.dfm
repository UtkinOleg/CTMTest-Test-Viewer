object InfoData: TInfoData
  Left = 326
  Top = 267
  BorderStyle = bsDialog
  Caption = 'Информация...'
  ClientHeight = 264
  ClientWidth = 336
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
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 321
    Height = 217
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 144
      Height = 13
      Caption = 'Общее количество записей:'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 107
      Height = 13
      Caption = 'Дата первой записи:'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 125
      Height = 13
      Caption = 'Дата последней записи:'
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 122
      Height = 13
      Caption = 'Размер основной базы:'
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 152
      Height = 13
      Caption = 'Размер базы  комментариев:'
    end
    object Label6: TLabel
      Left = 16
      Top = 136
      Width = 122
      Height = 13
      Caption = 'Размер базы вопросов:'
    end
    object Label7: TLabel
      Left = 16
      Top = 160
      Width = 153
      Height = 13
      Caption = 'Размер базы групп вопросов:'
    end
    object Label8: TLabel
      Left = 16
      Top = 184
      Width = 148
      Height = 13
      Caption = 'Общий размер базы данных:'
    end
    object Label9: TLabel
      Left = 216
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Label9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 216
      Top = 40
      Width = 46
      Height = 13
      Caption = 'Label10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 216
      Top = 64
      Width = 46
      Height = 13
      Caption = 'Label11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 216
      Top = 88
      Width = 46
      Height = 13
      Caption = 'Label12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 216
      Top = 112
      Width = 46
      Height = 13
      Caption = 'Label13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 216
      Top = 136
      Width = 46
      Height = 13
      Caption = 'Label14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 216
      Top = 160
      Width = 46
      Height = 13
      Caption = 'Label15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 216
      Top = 184
      Width = 46
      Height = 13
      Caption = 'Label16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Button1: TButton
    Left = 128
    Top = 232
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'ОК'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
