object ImportForm: TImportForm
  Left = 250
  Top = 153
  BorderStyle = bsDialog
  Caption = '������ ������'
  ClientHeight = 446
  ClientWidth = 689
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
  object Label1: TLabel
    Left = 136
    Top = 8
    Width = 345
    Height = 13
    Caption = '������ ����������� ��������. ������������� �������:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LV: TListView
    Left = 0
    Top = 32
    Width = 689
    Height = 377
    Columns = <
      item
        Caption = 'N'
        Width = 40
      end
      item
        Caption = '�.�.�.'
        Width = 250
      end
      item
        Caption = '����'
        Width = 300
      end
      item
        Caption = '������'
        Width = 80
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    SmallImages = ImageList1
    TabOrder = 0
    ViewStyle = vsReport
  end
  object Button1: TButton
    Left = 304
    Top = 416
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object ImageList1: TImageList
    Left = 16
    Top = 416
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000061A0EE005B9BED005694
      EC005694EC0099C3F3004B7ECB003868BE003161BD002C5ABB006C96D90071AC
      F00068A5EF00629FED005D99ED008CB8F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CC5F4005B92EB004C6EE5001C30
      DB001B4CE00084B7F20070A4E50086A3EF004E6EE5001B3EDD004882DE006CA9
      EF007EA0EE004A6FE5001B3FDE004B8EEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009DC5F4006797EC00556DE5001D25
      DA001B44DE0084B7F20072A4E50093A8F000556DE5001C31DB004882DE006EAA
      EF0093A8F000556DE5001C2DDB004B8EEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009DC5F4006797EC00556DE5001D25
      DA001B44DE0084B7F20072A4E50093A8F000556DE5001C31DB004882DE006EAA
      EF0093A8F000556DE5001C2DDB004B8EEB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009CC5F400468FEB003B84E9003177
      E7003077E70084B7F2004585DA003475D4002B6CD2002261D1004E88DD00539B
      ED004990EB003C84E9003175E7005395EC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B1D2F70069A5EF0064A1EE005F9B
      ED005F9BED00B1D1F500976172006B1930006B1930006B193000CDC1CF00EAF2
      FC00EAF2FC00EAF2FC00EAF2FC00E6F0FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009AC4F4005891EB00496FE5001C35
      DC001B4FE000A1C8F5009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009BC4F4006897EC00556DE5001D25
      DA001B44DE00A1C8F5009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009BC4F4006897EC00556DE5001D25
      DA001B44DE00A1C8F5009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009AC4F400488FEB003E83E9003072
      E6002E73E600A2C9F5009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBF3FC00E4EFFC00E4EFFC00E4EF
      FC00E4EFFC00EDF4FD009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009D616E006F1629006F1629006F162900DFCACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2B5BB00914D5B00914D5B00914D
      5B00914D5B00914D5B007A2739006F1629006F1629006F16290089404F00914D
      5B00914D5B00914D5B00914D5B00955462000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C39EA6006F1629006F1629006F16
      29006F1629006F1629006F1629006F1629006F1629006F1629006F1629006F16
      29006F1629006F1629006F162900752032000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8A6AD007A283A007A283A007A28
      3A007A283A007A283A007A283A007A283A007A283A007A283A007A283A007A28
      3A007A283A007A283A007A283A00803142000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001F000000000000001F000000000000001F000000000000001F000000000000
      001F000000000000FC1F000000000000FC1F0000000000000000000000000000
      00000000000000000000000000000000}
  end
end
