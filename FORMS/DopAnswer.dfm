object DopForm: TDopForm
  Left = 246
  Top = 168
  BorderStyle = bsDialog
  Caption = '��������� � ������'
  ClientHeight = 469
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClick = FormClick
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = '�����������!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object Panel2: TPanel
    Left = 0
    Top = 399
    Width = 748
    Height = 70
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    OnClick = Panel2Click
    object Label1: TLabel
      Left = 256
      Top = 8
      Width = 255
      Height = 20
      Caption = '�������� ���������� �����?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 264
      Top = 35
      Width = 107
      Height = 25
      Caption = '��'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 6
      ParentFont = False
      TabOrder = 0
    end
    object Button2: TButton
      Left = 392
      Top = 35
      Width = 107
      Height = 25
      Cancel = True
      Caption = '���'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object RO: TRxRichEdit
    Left = 0
    Top = 41
    Width = 748
    Height = 358
    Align = alClient
    ReadOnly = True
    TabOrder = 2
    WordWrap = False
    OnURLClick = ROURLClick
  end
end
