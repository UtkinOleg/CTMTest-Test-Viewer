object InfoForm: TInfoForm
  Left = 210
  Top = 167
  Width = 930
  Height = 605
  Caption = '����������'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyUp = FormKeyUp
  OnMouseUp = FormMouseUp
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 922
    Height = 571
    HorzScrollBar.Smooth = True
    HorzScrollBar.Style = ssFlat
    VertScrollBar.Smooth = True
    VertScrollBar.Style = ssFlat
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 85
      Height = 85
      AutoSize = True
    end
  end
end
