object FIOForm: TFIOForm
  Left = 301
  Top = 257
  BorderStyle = bsDialog
  Caption = 'Регистрация...'
  ClientHeight = 246
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SelButton1: TSelButton
    Left = 329
    Top = 64
    Width = 25
    Height = 23
    Hint = 'Выбор значения справочника'
    Caption = '...'
    Color = clBtnFace
    ColorBorder = clGrayText
    Enabled = True
    OnClick = SB1Click
    ColorOverCaption = clActiveCaption
    ColorOver = clBtnFace
    ColorDown = clBtnShadow
    Alignment = taCenter
    BorderWidth = 1
    ShowHint = True
    ParentShowHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
  end
  object SelButton2: TSelButton
    Left = 353
    Top = 64
    Width = 25
    Height = 23
    Hint = 'Очистка поля справочника'
    Caption = 'X'
    Color = clBtnFace
    ColorBorder = clGrayText
    Enabled = True
    ColorOverCaption = clActiveCaption
    ColorOver = clBtnFace
    ColorDown = clBtnShadow
    Alignment = taCenter
    BorderWidth = 1
    ShowHint = True
    ParentShowHint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 382
    Height = 209
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object PanelSpr1: TPanel
      Left = 2
      Top = 10
      Width = 378
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 0
        Width = 107
        Height = 16
        Caption = 'Справочник №1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SB1: TSelButton
        Left = 321
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Выбор значения справочника'
        Caption = '...'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = SB1Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object BtnClr1: TSelButton
        Left = 345
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Очистка поля справочника'
        Caption = 'X'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = BtnClr1Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Spr1Edit: TEdit97
        Left = 8
        Top = 18
        Width = 313
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = Spr1EditKeyDown
      end
    end
    object PanelSpr2: TPanel
      Left = 2
      Top = 58
      Width = 378
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 0
        Width = 107
        Height = 16
        Caption = 'Справочник №2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SelButton3: TSelButton
        Left = 321
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Выбор значения справочника'
        Caption = '...'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = SelButton3Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object SelButton4: TSelButton
        Left = 345
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Очистка поля справочника'
        Caption = 'X'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = SelButton4Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object Spr2Edit: TEdit97
        Left = 8
        Top = 18
        Width = 313
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = Spr2EditKeyDown
      end
    end
    object PanelFam: TPanel
      Left = 2
      Top = 106
      Width = 378
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 0
        Width = 163
        Height = 16
        Caption = 'Фамилия, Имя, Отчество:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SelButton5: TSelButton
        Left = 321
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Выбор значения справочника'
        Caption = '...'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = SelButton5Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object SelButton6: TSelButton
        Left = 345
        Top = 17
        Width = 25
        Height = 23
        Hint = 'Очистка поля справочника'
        Caption = 'X'
        Color = clBtnFace
        ColorBorder = clGrayText
        Enabled = True
        OnClick = SelButton6Click
        ColorOverCaption = clActiveCaption
        ColorOver = clBtnFace
        ColorDown = clBtnShadow
        Alignment = taCenter
        BorderWidth = 1
        ShowHint = True
        ParentShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      object FamEdit: TEdit97
        Left = 8
        Top = 18
        Width = 313
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        ParentFont = False
        TabOrder = 0
        OnKeyDown = FamEditKeyDown
      end
    end
    object PanelSpr3: TPanel
      Left = 2
      Top = 154
      Width = 378
      Height = 48
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Label4: TLabel
        Left = 8
        Top = 0
        Width = 9
        Height = 16
        Caption = '   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Spr3Edit: TEdit97
        Left = 8
        Top = 18
        Width = 313
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideSelection = False
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 378
      Height = 8
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 209
    Width = 382
    Height = 37
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Button3: TButton
      Left = 278
      Top = 6
      Width = 97
      Height = 25
      Caption = 'Помощь'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 176
      Top = 6
      Width = 97
      Height = 25
      Cancel = True
      Caption = 'Отмена'
      ModalResult = 2
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 72
      Top = 6
      Width = 99
      Height = 25
      Caption = 'ОК'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
