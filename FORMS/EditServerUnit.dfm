object EditServerForm: TEditServerForm
  Left = 220
  Top = 205
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '������ ��������� ������'
  ClientHeight = 238
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 432
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 47
      Width = 179
      Height = 13
      Caption = ' ����� ������� ��������� ������: '
      Transparent = True
    end
    object Label20: TLabel
      Left = 112
      Top = 56
      Width = 8
      Height = 32
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 144
      Top = 56
      Width = 8
      Height = 32
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 176
      Top = 56
      Width = 8
      Height = 32
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 8
      Top = 123
      Width = 322
      Height = 13
      Caption = '��� ������ ���� � ������� ������ ��� ������ ����������.'
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 146
      Width = 48
      Height = 13
      Caption = '���� �1:'
      Transparent = True
    end
    object Label17: TLabel
      Left = 144
      Top = 146
      Width = 48
      Height = 13
      Caption = '���� �2:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 168
      Width = 362
      Height = 26
      Caption = 
        '�������� ��������� "���� �1" � "���� �2"  ���������� �������� '#13#10 +
        '������ � ��� ������, ���� �������� ������ ���� ����� ������-����' +
        '��.'
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 8
      Width = 124
      Height = 13
      Caption = '������������ �������:'
      Transparent = True
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 66
      Width = 73
      Height = 17
      Caption = 'IP �����:'
      Checked = True
      TabOrder = 6
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 98
      Width = 65
      Height = 17
      Caption = '��� :'
      TabOrder = 7
      OnClick = RadioButton2Click
    end
    object ServerName: TEdit
      Left = 86
      Top = 96
      Width = 331
      Height = 21
      TabOrder = 8
    end
    object MainPort1: TEdit
      Left = 88
      Top = 141
      Width = 49
      Height = 21
      Hint = '=0 ���� ��������'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      Text = '500'
      OnChange = MainPort1Change
      OnKeyPress = MainPort1KeyPress
    end
    object MainPort2: TEdit
      Left = 200
      Top = 141
      Width = 49
      Height = 21
      Hint = '=0 ���� ��������'
      Enabled = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 9
      Text = '501'
      OnKeyPress = MainPort2KeyPress
    end
    object Edit1: TEdit
      Left = 8
      Top = 24
      Width = 409
      Height = 21
      TabOrder = 0
    end
    object IP1: TEdit
      Left = 88
      Top = 64
      Width = 25
      Height = 21
      TabOrder = 1
      OnChange = IP1Change
      OnKeyPress = IP1KeyPress
    end
    object IP2: TEdit
      Left = 120
      Top = 64
      Width = 25
      Height = 21
      MaxLength = 3
      TabOrder = 2
      OnChange = IP2Change
      OnKeyPress = IP2KeyPress
    end
    object IP3: TEdit
      Left = 152
      Top = 64
      Width = 25
      Height = 21
      MaxLength = 3
      TabOrder = 3
      OnChange = IP3Change
      OnKeyPress = IP3KeyPress
    end
    object IP4: TEdit
      Left = 184
      Top = 64
      Width = 25
      Height = 21
      MaxLength = 3
      TabOrder = 4
      OnKeyPress = IP4KeyPress
    end
  end
  object Button1: TButton
    Left = 192
    Top = 208
    Width = 75
    Height = 25
    Caption = '��'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 208
    Width = 75
    Height = 25
    Cancel = True
    Caption = '������'
    ModalResult = 2
    TabOrder = 2
  end
  object Button3: TButton
    Left = 352
    Top = 208
    Width = 75
    Height = 25
    Caption = '������'
    TabOrder = 3
    OnClick = Button3Click
  end
end
