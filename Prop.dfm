object PropDlg: TPropDlg
  Left = 206
  Top = 165
  BorderIcons = [biHelp]
  BorderStyle = bsDialog
  Caption = 'Свойства зачетного теста...'
  ClientHeight = 238
  ClientWidth = 560
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
    Left = 8
    Top = 8
    Width = 545
    Height = 193
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 110
    Height = 13
    Caption = 'Наименование теста:'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 136
    Height = 13
    Caption = 'Уровень сложности теста:'
  end
  object Label3: TLabel
    Left = 288
    Top = 40
    Width = 109
    Height = 13
    Caption = 'Время тестирования:'
  end
  object Label4: TLabel
    Left = 16
    Top = 64
    Width = 166
    Height = 13
    Caption = 'Начальная дата доступа к тесту:'
  end
  object Label5: TLabel
    Left = 288
    Top = 64
    Width = 159
    Height = 13
    Caption = 'Конечная дата доступа к тесту:'
  end
  object Label6: TLabel
    Left = 16
    Top = 88
    Width = 88
    Height = 13
    Caption = 'Создатель теста:'
  end
  object Label7: TLabel
    Left = 16
    Top = 112
    Width = 229
    Height = 13
    Caption = 'Дата и время последнего обновления теста:'
  end
  object Label8: TLabel
    Left = 16
    Top = 136
    Width = 167
    Height = 13
    Caption = 'Тест создан для специальности:'
  end
  object Label9: TLabel
    Left = 16
    Top = 160
    Width = 73
    Height = 13
    Caption = 'Комментарий:'
  end
  object Label10: TLabel
    Left = 464
    Top = 40
    Width = 30
    Height = 13
    Caption = 'минут'
  end
  object Button1: TButton
    Left = 232
    Top = 208
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object Name: TEdit97
    Left = 128
    Top = 16
    Width = 417
    Height = 19
    ReadOnly = True
    TabOrder = 1
  end
  object Level: TEdit97
    Left = 160
    Top = 40
    Width = 121
    Height = 19
    ReadOnly = True
    TabOrder = 2
  end
  object TimeLimit: TEdit97
    Left = 400
    Top = 40
    Width = 57
    Height = 19
    ReadOnly = True
    TabOrder = 3
  end
  object BeginDate: TEdit97
    Left = 184
    Top = 64
    Width = 97
    Height = 19
    ReadOnly = True
    TabOrder = 4
  end
  object EndDate: TEdit97
    Left = 456
    Top = 64
    Width = 89
    Height = 19
    ReadOnly = True
    TabOrder = 5
  end
  object Creator: TEdit97
    Left = 104
    Top = 88
    Width = 441
    Height = 19
    ReadOnly = True
    TabOrder = 6
  end
  object UpdateDate: TEdit97
    Left = 248
    Top = 112
    Width = 145
    Height = 19
    ReadOnly = True
    TabOrder = 7
  end
  object Spec: TEdit97
    Left = 184
    Top = 136
    Width = 361
    Height = 19
    ReadOnly = True
    TabOrder = 8
  end
  object Comment: TEdit97
    Left = 16
    Top = 176
    Width = 529
    Height = 19
    ReadOnly = True
    TabOrder = 9
  end
  object RxGradientCaption1: TRxGradientCaption
    Captions = <>
    FormCaption = 'Свойства зачетного теста...'
    StartColor = clRed
    Left = 312
    Top = 208
  end
end
