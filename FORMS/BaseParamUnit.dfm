object BaseParamForm: TBaseParamForm
  Left = 238
  Top = 289
  BorderStyle = bsDialog
  Caption = '��������� ���� ������'
  ClientHeight = 222
  ClientWidth = 438
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
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 425
    Height = 65
    Caption = '�������������� ���� ������'
    TabOrder = 0
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 24
    Width = 297
    Height = 17
    Caption = '��������� ���� ������ ����������� ������������'
    Checked = True
    TabOrder = 1
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 48
    Width = 409
    Height = 17
    Caption = 
      '���� ������ ����������� ������������ ����������� �� ������ �����' +
      '���'
    TabOrder = 2
    OnClick = RadioButton2Click
  end
  object Button1: TButton
    Left = 200
    Top = 192
    Width = 75
    Height = 25
    Caption = '��'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 192
    Width = 75
    Height = 25
    Cancel = True
    Caption = '������'
    ModalResult = 2
    TabOrder = 4
  end
  object Button3: TButton
    Left = 360
    Top = 192
    Width = 75
    Height = 25
    Caption = '������'
    TabOrder = 5
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 72
    Width = 425
    Height = 73
    Caption = '��������� ��������� ���� ������'
    Enabled = False
    TabOrder = 6
    object Label1: TLabel
      Left = 8
      Top = 23
      Width = 27
      Height = 13
      Caption = '����:'
    end
    object Label2: TLabel
      Left = 8
      Top = 47
      Width = 79
      Height = 13
      Caption = '������������:'
    end
    object DirectoryEdit1: TDirectoryEdit
      Left = 96
      Top = 20
      Width = 321
      Height = 21
      DialogKind = dkWin32
      NumGlyphs = 1
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 96
      Top = 44
      Width = 321
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 145
    Width = 425
    Height = 41
    Caption = '��������� �����������'
    TabOrder = 7
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 393
      Height = 17
      Caption = '��������� ��������� ����� ���� ������ ����������� ��� ������'
      TabOrder = 0
    end
  end
end
