object mf: Tmf
  Left = 249
  Top = 216
  Width = 842
  Height = 600
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Тестирование'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object SBar: TStatusBar
    Left = 0
    Top = 526
    Width = 834
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 300
      end>
    SimplePanel = False
    UseSystemFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 526
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Splitter2: TSplitter
      Left = 177
      Top = 55
      Width = 5
      Height = 471
      Cursor = crHSplit
      AutoSnap = False
      Color = clBtnFace
      MinSize = 1
      ParentColor = False
      ResizeStyle = rsUpdate
      OnMoved = Splitter2Moved
    end
    object Panel2: TPanel
      Left = 182
      Top = 55
      Width = 652
      Height = 471
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 652
        Height = 471
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        Visible = False
        object Splitter1: TSplitter
          Left = 0
          Top = 209
          Width = 652
          Height = 3
          Cursor = crVSplit
          Align = alTop
          Color = clBtnFace
          ParentColor = False
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 652
          Height = 209
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object TabControl5: TTabControl
            Left = 0
            Top = 0
            Width = 652
            Height = 209
            Align = alClient
            TabOrder = 0
            object ro: TRichEditWithOle
              Left = 4
              Top = 6
              Width = 644
              Height = 199
              TabStop = False
              Align = alClient
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              HideSelection = False
              ParentFont = False
              ParentShowHint = False
              ReadOnly = True
              ScrollBars = ssBoth
              ShowHint = True
              TabOrder = 0
              Visible = False
              WordWrap = False
              OnKeyUp = roKeyUp
            end
          end
        end
        object TabControl1: TTabControl
          Left = 0
          Top = 212
          Width = 652
          Height = 259
          Align = alClient
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 6
            Width = 644
            Height = 27
            Align = alTop
            AutoSize = False
            Caption = '  Выбор одного или нескольких вариантов'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object VariantBox: TListBox
            Left = 4
            Top = 33
            Width = 644
            Height = 222
            Align = alClient
            BorderStyle = bsNone
            ExtendedSelect = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            MultiSelect = True
            ParentFont = False
            Style = lbOwnerDrawVariable
            TabOrder = 0
            OnDrawItem = VariantBoxDrawItem
            OnKeyDown = VariantBoxKeyDown
            OnKeyUp = VariantBoxKeyUp
            OnMeasureItem = VariantBoxMeasureItem
            OnMouseDown = VariantBoxMouseDown
            OnMouseUp = VariantBoxMouseUp
          end
        end
        object TabControl2: TTabControl
          Left = 0
          Top = 212
          Width = 652
          Height = 259
          Align = alClient
          TabOrder = 2
          object Label2: TLabel
            Left = 4
            Top = 6
            Width = 644
            Height = 27
            Align = alTop
            AutoSize = False
            Caption = '  Введите ответ с клавиатуры'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object PageScroller1: TPageScroller
            Left = 4
            Top = 33
            Width = 644
            Height = 222
            Align = alClient
            AutoScroll = False
            Color = clHighlightText
            Control = TabControl6
            Orientation = soVertical
            ParentColor = False
            TabOrder = 0
            object TabControl6: TTabControl
              Left = 0
              Top = 0
              Width = 644
              Height = 373
              TabOrder = 0
              object KbdPanel10: TPanel
                Left = 4
                Top = 321
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 0
                Visible = False
                object KbdLabel10: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel16: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit10: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit10Change
                  end
                end
              end
              object KbdPanel9: TPanel
                Left = 4
                Top = 286
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 1
                Visible = False
                object KbdLabel9: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel15: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit9: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit9Change
                  end
                end
              end
              object KbdPanel8: TPanel
                Left = 4
                Top = 251
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 2
                Visible = False
                object KbdLabel8: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel14: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit8: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit8Change
                  end
                end
              end
              object KbdPanel7: TPanel
                Left = 4
                Top = 216
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 3
                Visible = False
                object KbdLabel7: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel13: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit7: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit7Change
                  end
                end
              end
              object KbdPanel6: TPanel
                Left = 4
                Top = 181
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 4
                Visible = False
                object KbdLabel6: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel12: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit6: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit6Change
                  end
                end
              end
              object KbdPanel5: TPanel
                Left = 4
                Top = 146
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 5
                Visible = False
                object KbdLabel5: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel11: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit5: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit5Change
                  end
                end
              end
              object KbdPanel4: TPanel
                Left = 4
                Top = 111
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 6
                Visible = False
                object KbdLabel4: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel10: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit4: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit4Change
                  end
                end
              end
              object KbdPanel3: TPanel
                Left = 4
                Top = 76
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 7
                Visible = False
                object KbdLabel3: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel9: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit3: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit3Change
                  end
                end
              end
              object KbdPanel2: TPanel
                Left = 4
                Top = 41
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 8
                Visible = False
                object KbdLabel2: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel8: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit2: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEdit2Change
                  end
                end
              end
              object KbdPanel: TPanel
                Left = 4
                Top = 6
                Width = 636
                Height = 35
                Align = alTop
                BevelOuter = bvNone
                Color = clHighlightText
                TabOrder = 9
                object KbdLabel: TLabel
                  Left = 0
                  Top = 0
                  Width = 3
                  Height = 35
                  Align = alLeft
                  Alignment = taCenter
                  Color = clBtnFace
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                end
                object Panel7: TPanel
                  Left = 3
                  Top = 0
                  Width = 633
                  Height = 35
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clHighlightText
                  TabOrder = 0
                  object KbdEdit: TEdit
                    Left = 8
                    Top = 4
                    Width = 313
                    Height = 24
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                    OnChange = KbdEditChange
                    OnKeyUp = KbdEditKeyUp
                  end
                end
              end
            end
          end
        end
        object TabControl3: TTabControl
          Left = 0
          Top = 212
          Width = 652
          Height = 259
          Align = alClient
          TabOrder = 3
          OnResize = TabControl3Resize
          object Label3: TLabel
            Left = 4
            Top = 6
            Width = 644
            Height = 25
            Align = alTop
            AutoSize = False
            Caption = '  Установите правильные соответствия между выражениями'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object AccordList: TListBox
            Left = 4
            Top = 146
            Width = 644
            Height = 109
            Hint = 'Установленные соответствия'
            Align = alBottom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 20
            ParentFont = False
            ParentShowHint = False
            PopupMenu = PopupMenu5
            ShowHint = True
            Style = lbOwnerDrawVariable
            TabOrder = 0
            OnDblClick = AccordListDblClick
            OnDrawItem = AccordListDrawItem
            OnMeasureItem = AccordListMeasureItem
          end
          object RxSplitter2: TRxSplitter
            Left = 4
            Top = 142
            Width = 644
            Height = 4
            ControlFirst = AccordList
            Align = alBottom
            BevelOuter = bvNone
          end
          object Panel4: TPanel
            Left = 4
            Top = 31
            Width = 644
            Height = 111
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object ALeft: TListBox
              Left = 0
              Top = 36
              Width = 120
              Height = 75
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu4
              ShowHint = True
              Style = lbOwnerDrawVariable
              TabOrder = 0
              OnDblClick = ALeftDblClick
              OnDrawItem = ALeftDrawItem
              OnKeyUp = ALeftKeyUp
              OnMeasureItem = ALeftMeasureItem
            end
            object ACenter: TListBox
              Left = 120
              Top = 36
              Width = 109
              Height = 75
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu4
              ShowHint = True
              Style = lbOwnerDrawVariable
              TabOrder = 1
              OnDblClick = ACenterDblClick
              OnDrawItem = ACenterDrawItem
              OnKeyUp = ACenterKeyUp
              OnMeasureItem = ACenterMeasureItem
            end
            object ARight: TListBox
              Left = 229
              Top = 36
              Width = 415
              Height = 75
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              ParentShowHint = False
              PopupMenu = PopupMenu4
              ShowHint = True
              Style = lbOwnerDrawVariable
              TabOrder = 2
              OnDblClick = ARightDblClick
              OnDrawItem = ARightDrawItem
              OnKeyUp = ARightKeyUp
              OnMeasureItem = ARightMeasureItem
            end
            object CoolBar1: TCoolBar
              Left = 0
              Top = 0
              Width = 644
              Height = 36
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar2
                  ImageIndex = -1
                  MinHeight = 36
                  Width = 644
                end>
              EdgeInner = esNone
              EdgeOuter = esNone
              object ToolBar2: TToolBar
                Left = 9
                Top = 0
                Width = 631
                Height = 36
                AutoSize = True
                ButtonHeight = 36
                ButtonWidth = 67
                Caption = 'ToolBar2'
                EdgeBorders = []
                EdgeInner = esNone
                EdgeOuter = esNone
                Flat = True
                Images = AccordImageList
                ShowCaptions = True
                TabOrder = 0
                Transparent = True
                object SetToolBtn: TToolButton
                  Left = 0
                  Top = 0
                  Hint = 'Нажмите, чтобы установить соответсвие'
                  Caption = 'Установить'
                  ImageIndex = 0
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SetToolBtnClick
                end
                object ResetToolBtn: TToolButton
                  Left = 67
                  Top = 0
                  Hint = 'Нажмите, чтобы удалить соответствие'
                  Caption = 'Удалить'
                  ImageIndex = 1
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ResetToolBtnClick
                end
              end
            end
          end
        end
        object TabControl4: TTabControl
          Left = 0
          Top = 212
          Width = 652
          Height = 259
          Align = alClient
          TabOrder = 4
          object Label4: TLabel
            Left = 4
            Top = 6
            Width = 644
            Height = 27
            Align = alTop
            AutoSize = False
            Caption = '  Расположите элементы в правильном порядке'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Panel6: TPanel
            Left = 4
            Top = 33
            Width = 644
            Height = 222
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object CoolBar2: TCoolBar
              Left = 0
              Top = 0
              Width = 644
              Height = 36
              AutoSize = True
              Bands = <
                item
                  Control = ToolBar1
                  ImageIndex = -1
                  MinHeight = 36
                  Width = 644
                end>
              EdgeInner = esNone
              EdgeOuter = esNone
              object ToolBar1: TToolBar
                Left = 9
                Top = 0
                Width = 631
                Height = 36
                AutoSize = True
                ButtonHeight = 36
                ButtonWidth = 37
                Caption = 'ToolBar1'
                EdgeInner = esNone
                EdgeOuter = esNone
                Flat = True
                Images = ImageList1
                ShowCaptions = True
                TabOrder = 0
                Transparent = True
                object ToolButton6: TToolButton
                  Left = 0
                  Top = 0
                  Hint = 'Поднять вверх '
                  Caption = 'Вверх'
                  ImageIndex = 0
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton6Click
                end
                object ToolButton7: TToolButton
                  Left = 37
                  Top = 0
                  Hint = 'Опустить вниз'
                  Caption = 'Вниз'
                  ImageIndex = 1
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = ToolButton7Click
                end
              end
            end
            object SeqListBox: TListBox
              Left = 0
              Top = 36
              Width = 644
              Height = 186
              Hint = 'Выбранные утверждения'
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 20
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              Style = lbOwnerDrawVariable
              TabOrder = 1
              OnDrawItem = SeqListBoxDrawItem
              OnKeyUp = SeqListBoxKeyUp
              OnMeasureItem = SeqListBoxMeasureItem
              OnMouseDown = SeqListBoxMouseDown
              OnMouseMove = SeqListBoxMouseMove
            end
          end
        end
      end
    end
    object tv: TTreeView
      Left = 0
      Top = 55
      Width = 177
      Height = 471
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HideSelection = False
      Images = TreeImageList
      Indent = 19
      ParentFont = False
      ReadOnly = True
      RightClickSelect = True
      ShowButtons = False
      ShowLines = False
      ShowRoot = False
      StateImages = TreeImageList
      TabOrder = 1
      Visible = False
      OnClick = tvClick
      OnCollapsing = tvCollapsing
      OnKeyUp = tvKeyUp
    end
    object tb1: TCoolBar
      Left = 0
      Top = 0
      Width = 834
      Height = 55
      BandMaximize = bmNone
      Bands = <
        item
          Control = ToolBar3
          ImageIndex = -1
          MinHeight = 52
          Width = 834
        end>
      EdgeBorders = []
      EdgeInner = esNone
      EdgeOuter = esNone
      FixedSize = True
      ParentShowHint = False
      ShowHint = True
      Visible = False
      object ToolBar3: TToolBar
        Left = 9
        Top = 0
        Width = 821
        Height = 52
        ButtonHeight = 52
        ButtonWidth = 73
        Caption = 'ToolBar3'
        EdgeInner = esNone
        EdgeOuter = esNone
        Flat = True
        Images = ToolImageList
        ShowCaptions = True
        TabOrder = 0
        Transparent = True
        Wrapable = False
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Hint = 'Предыдущий вопрос - (F4)'
          Caption = 'Предыдущий'
          ImageIndex = 0
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 73
          Top = 0
          Hint = 'Следующий вопрос - (F5)'
          Caption = 'Следующий'
          ImageIndex = 1
          OnClick = ToolButton2Click
        end
        object ToolButton13: TToolButton
          Left = 146
          Top = 0
          Width = 8
          Caption = 'ToolButton13'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton4: TToolButton
          Left = 154
          Top = 0
          Hint = 'Завершить тестирование'
          Caption = 'Завершить'
          ImageIndex = 2
          OnClick = ToolButton4Click
        end
        object ToolButton12: TToolButton
          Left = 227
          Top = 0
          Width = 8
          Caption = 'ToolButton12'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object CheckButton: TToolButton
          Left = 235
          Top = 0
          Hint = 'Показать правильный ответ'
          Caption = 'Проверка'
          Enabled = False
          ImageIndex = 3
          OnClick = CheckButtonClick
        end
        object ToolButton14: TToolButton
          Left = 308
          Top = 0
          Width = 8
          Caption = 'ToolButton14'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object VideoButton: TToolButton
          Left = 316
          Top = 0
          Hint = 'Открыть прикрепленный файл...'
          Caption = 'Файл'
          Enabled = False
          ImageIndex = 4
          OnClick = VideoButtonClick
        end
        object ToolButton15: TToolButton
          Left = 389
          Top = 0
          Width = 8
          Caption = 'ToolButton15'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolbarButton971: TToolButton
          Left = 397
          Top = 0
          Hint = 'Помощь - (F1)'
          Caption = 'Помощь'
          ImageIndex = 5
          OnClick = ToolbarButton971Click
        end
        object ToolButton3: TToolButton
          Left = 470
          Top = 0
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object timewindow: TTabControl
          Left = 478
          Top = 0
          Width = 141
          Height = 52
          Hint = 'Осталось времени'
          Align = alLeft
          MultiLine = True
          MultiSelect = True
          TabOrder = 0
          object RxLabel6: TRxLabel
            Left = 10
            Top = 8
            Width = 117
            Height = 13
            Caption = 'ОСТАЛОСЬ ВРЕМЕНИ'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clBtnFace
            ShadowSize = 0
            ShadowPos = spLeftBottom
            Transparent = True
          end
          object Digit1: TDigit
            Left = 13
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit2: TDigit
            Left = 29
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object RxLabel1: TRxLabel
            Left = 44
            Top = 24
            Width = 9
            Height = 24
            Caption = ':'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clBtnText
            Transparent = True
          end
          object Digit3: TDigit
            Left = 53
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit4: TDigit
            Left = 69
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object RxLabel2: TRxLabel
            Left = 84
            Top = 24
            Width = 9
            Height = 24
            Caption = ':'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clActiveCaption
            Font.Height = -21
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ShadowColor = clBtnText
            Transparent = True
          end
          object Digit5: TDigit
            Left = 93
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit6: TDigit
            Left = 109
            Top = 24
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
        end
        object ToolButton5: TToolButton
          Left = 619
          Top = 0
          Width = 8
          Caption = 'ToolButton5'
          ImageIndex = 7
          Style = tbsSeparator
        end
        object quewindow: TTabControl
          Left = 627
          Top = 0
          Width = 190
          Height = 52
          Align = alLeft
          TabOrder = 1
          object RxLabel4: TRxLabel
            Left = 3
            Top = 10
            Width = 114
            Height = 13
            Caption = 'ЗАДАНО ВОПРОСОВ:'
            Color = clWindowText
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clBtnFace
            ShadowSize = 0
            ShadowPos = spLeftBottom
            Transparent = True
          end
          object Digit10: TDigit
            Left = 130
            Top = 4
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit11: TDigit
            Left = 146
            Top = 4
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit12: TDigit
            Left = 162
            Top = 4
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object RxLabel5: TRxLabel
            Left = 2
            Top = 32
            Width = 127
            Height = 13
            Caption = 'ОСТАЛОСЬ ВОПРОСОВ:'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ShadowColor = clBtnFace
            ShadowSize = 0
            ShadowPos = spLeftBottom
            Transparent = True
          end
          object Digit7: TDigit
            Left = 130
            Top = 27
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit8: TDigit
            Left = 146
            Top = 27
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
          object Digit9: TDigit
            Left = 162
            Top = 27
            Width = 15
            Height = 22
            Bars = [brUp, brLeftUp, brRightUp, brLeftDown, brRightDown, brDown]
            OnPen.Color = clInactiveCaption
            OffPen.Color = clInactiveCaptionText
            OnBrush.Color = clBlue
            OffBrush.Color = cl3DLight
            Value = '0'
            Shift = 0
          end
        end
      end
    end
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 834
    Height = 526
    Align = alClient
    Columns = <
      item
        Width = 500
      end>
    DragMode = dmAutomatic
    FlatScrollBars = True
    FullDrag = True
    HideSelection = False
    HotTrack = True
    HoverTime = 0
    IconOptions.AutoArrange = True
    LargeImages = ImageList2
    ReadOnly = True
    ParentShowHint = False
    PopupMenu = PopupMenu3
    ShowWorkAreas = True
    ShowHint = True
    TabOrder = 2
    OnClick = ListView1Click
    OnDblClick = ListView1DblClick
    OnInfoTip = ListView1InfoTip
    OnKeyUp = ListView1KeyUp
  end
  object MainMenu1: TMainMenu
    Images = MenuImages
    OwnerDraw = True
    Left = 40
    Top = 240
    object File1: TMenuItem
      Caption = '&Тестирование'
      object Selectquestion1: TMenuItem
        Caption = '&Зачетное тестирование...'
        Enabled = False
        ShortCut = 120
        Visible = False
      end
      object N31: TMenuItem
        Caption = 'Локальное тестирование...'
        ImageIndex = 4
        OnClick = N31Click
      end
      object N9: TMenuItem
        Caption = '&Завершить тестирование...'
        OnClick = N9Click
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object N27: TMenuItem
        Caption = '&Результаты тестирования...'
        ImageIndex = 3
        ShortCut = 16460
        OnClick = N27Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Caption = '&Добавить локальный тест...'
        ImageIndex = 7
        OnClick = N33Click
      end
      object N34: TMenuItem
        Caption = '&Удалить локальный тест...'
        OnClick = N34Click
      end
      object N35: TMenuItem
        Caption = '-'
        Visible = False
      end
      object N17: TMenuItem
        Caption = 'Удаленное тестирование...'
        Enabled = False
        ImageIndex = 8
        Visible = False
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = '&Выход'
        OnClick = Exit1Click
      end
    end
    object N3: TMenuItem
      Caption = '&Вопрос'
      object N4: TMenuItem
        Caption = '&Предыдущий'
        ImageIndex = 1
        ShortCut = 115
        OnClick = N4Click
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object N16: TMenuItem
        Caption = '&Следующий'
        ImageIndex = 2
        ShortCut = 116
        OnClick = N16Click
      end
    end
    object N36: TMenuItem
      Caption = '&Информация'
    end
    object Tools1: TMenuItem
      Caption = '&Сервис'
      object N22: TMenuItem
        Caption = '&Калькулятор...'
        ShortCut = 118
        OnClick = N22Click
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object Options1: TMenuItem
        Caption = '&Параметры...'
        ImageIndex = 5
        OnClick = Options1Click
      end
      object N41: TMenuItem
        Caption = '&Связанные справочники...'
        ImageIndex = 10
        OnClick = N41Click
      end
      object N56: TMenuItem
        Caption = '-'
      end
      object N57: TMenuItem
        Caption = 'Окно на весь экран'
        OnClick = N57Click
      end
    end
    object N5: TMenuItem
      Caption = '&Помощь'
      object N7: TMenuItem
        Caption = '&Содержание...'
        ImageIndex = 0
        ShortCut = 112
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object N21: TMenuItem
        Caption = '&Регистрация...'
        ImageIndex = 6
        OnClick = N21Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object N44: TMenuItem
        Caption = 'Свидетельство о &регистрации...'
        OnClick = N44Click
      end
      object N53: TMenuItem
        Caption = 'Свидетельство О&ФАП...'
        OnClick = N53Click
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object N43: TMenuItem
        Caption = 'О&тзывы'
        object N46: TMenuItem
          Caption = 'Территориальный центр медицины катастроф РБ...'
          OnClick = N46Click
        end
        object N48: TMenuItem
          Caption = 'Улан-Удэнский колледж железнодорожного транспорта...'
          OnClick = N48Click
        end
        object N47: TMenuItem
          Caption = 'Улан-Удэнский базовый медицинский колледж...'
          OnClick = N47Click
        end
        object N52: TMenuItem
          Caption = 'Муниципальное учереждение "Центр корпоративного обучения"...'
          OnClick = N52Click
        end
      end
      object N15: TMenuItem
        Caption = 'О па&ртнерах'
        object N38: TMenuItem
          Caption = 'Бурятский центр сертификации...'
          OnClick = N38Click
        end
        object N39: TMenuItem
          Caption = '-'
        end
        object N40: TMenuItem
          Caption = 'Информационно-технический центр "Ками-Север"'
          OnClick = N40Click
        end
      end
      object N29: TMenuItem
        Caption = '-'
      end
      object N1: TMenuItem
        Caption = 'О ра&зработчиках...'
        OnClick = N1Click
      end
      object N51: TMenuItem
        Caption = '&Научный руководитель...'
        OnClick = N51Click
      end
      object N6: TMenuItem
        Caption = '&О программе...'
        OnClick = N6Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 166
    Top = 239
    object N13: TMenuItem
      Caption = 'Установить соответствие'
      ShortCut = 113
      OnClick = N13Click
    end
    object N10: TMenuItem
      Caption = 'Удалить соответствие'
      Enabled = False
      ShortCut = 119
      OnClick = N10Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object N12: TMenuItem
      Caption = 'Удалить все сответствия'
      Enabled = False
      OnClick = N12Click
    end
  end
  object TreeImageList: TImageList
    ShareImages = True
    Left = 168
    Top = 304
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6D6DA00985866009858660098586600985866009858
      6600985866009858660098586600C39FA7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5F5F60047494D006062
      6500606265006062650062555B0097616D00F5EFF000F5EFF000F5EFF000F5EF
      F000F5EFF000F5EFF000CAA9B000B58892000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000000000000000000000
      000000000000000000000000000000000000C0C1C3004042460040424600BFBF
      C100BFBFC100BFBFC100AEA2A600885D6700D1D2D300D1D2D300D0D1D2000000
      00000000000000000000D8C0C500B58791000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000000000000000000000
      000000000000000000000000000000000000423F44004B3238003F292C00523D
      3E00564240005A4743005C4A43005D483E006B5C4C0072654E00494744000000
      00000000000000000000D8C0C500B58791000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C57500484540000000
      00000000000000000000D8C0C500B58791000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000000000000000000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C57500484540000000
      00000000000000000000D8C1C600B48690000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000000000000000000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C57500484540000000
      00000000000000000000D8C1C600B48690000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF00000084000000000000000000000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C57500484540000000
      0000D5BCC100914B51008439490085394A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FF000000840000000000000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C5750046433E00F2EA
      EB00CAA9AF00B0725C0095546200F2EBEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FF000000FF0000008400000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C575003D3430009659
      660075303F007B2A3A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF00000084000000000000000000000000000000FF000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF00000084000000000000000000000000000000FF000000FF00000084
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C5750048454000EBEC
      EC005C5E62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF0000008400000000000000000000000000000000000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF0000008400000000000000000000000000000000000000FF00000084
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C5750048454000EBEC
      EC005C5E62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000840000000000000000000000FF000000FF000000
      8400000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000840000000000000000000000FF000000FF00000084
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C5750048454000EBEC
      EC005C5E62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FF000000FF000000FF000000FF0000008400000000
      0000000000000000000000000000000000004A434900742A3200863D3C00904C
      44009C5B4D00A76A5500B67D5F00C7916600DAA96E00F0C5750044413C00B9BA
      BB005C5E62000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A43490066282F007E3A3A008748
      4100935649009D645100AB765A00BB896100CD9F6800E1B96F00383631006E6F
      7300909194000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000726F73004B454A004C474A004D49
      4B004F4A4C00504C4D00514D4E0053504F00555250005755500058585700FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFC000000FE7FFE7F80000000
      FC3FFC3F001C0000FC3FFC3F001C0000FE7FFE7F001C0000FC3FFC3F001C0000
      FC3FFC3F001C0000FC3FFC3F00100000FC1FFC1F00000000F20FF20F00030000
      E107E10700070000E187E18700070000E007E00700070000F00FF00F00070000
      F81FF81F00070000FFFFFFFF000F000000000000000000000000000000000000
      000000000000}
  end
  object ToolImageList: TImageList
    Height = 32
    Width = 32
    Left = 136
    Top = 304
    Bitmap = {
      494C010106000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A7510047B3580049B75B004CB85C004DB95C004EB95F0050BA60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045AF55004DB95E0055BC630059BD68005CBE6B0060C06E0067C374000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A7510047B457004DB95C0051BA610059BD680063C1720070C67C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3ECE300A6C3A5005C8E58005D885700A3B39C00DCDF
      D900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000388F44003C9849003E9D4C0041A5510046B1560054BB640069C475000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005A985900327E30002C7529004B7C44007A95
      7100C7D0C400F2F3F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F773900307B3B00327F3D00358741003C98490045AF550051BA60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC700579B580027882C00157C190020761F003175
      2D004A7A42007A957200DCDFD900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028663100296832002A6A33002D733700358741003FA14D0056BC64000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC700569D580024912D000C8716000D8013001479
      170022711F003F7737007A967200CBD2C700F5F6F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC70057A05A002798320011961F00139922001394
      200013841A001E7A1E0032762E00517D480099A99100DDE0D900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000399046003C974A003D9B4C003D9A4C003D9B4C003D9A4C003D9B4C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC70057A15C002A9C3700159F270018A92D0015A6
      29000F961D000F86170014771600297424004B7C42007F9A7700CED6CB00F7F8
      F600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A7510047B3580049B75B004CB85C004DB95C004EB95F0050BA60000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC70058A25D002C9E3C0018A22E001BAE34001AB0
      320016A72A00129C2200118E1B0016831A00227A200035792F00507D47008AA0
      8200E2E5E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000045AF55004DB95E0055BC630059BD68005CBE6B0060C06E0067C374000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC70059A35F002EA040001BA634001EB33C001EB7
      3C001BB3340016AB2C00129F22000F931A000E84140016791600267221004479
      3B00839F7C00CED6CB00F4F6F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000042A7510047B457004DB95C0051BA610059BD680063C1720070C67C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005AA4600030A244001EA93B0022B6440022BB
      45001FB83C001BB2350017AC2D0014A4250010991D00108E1800138116001F7A
      1D0033782F004F7E48008BA18300D5DAD2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000388F44003C9849003E9D4C0041A5510046B1560054BB640069C475000000
      0000656565000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005AA4620032A4480020AB410026BA4C0026BF
      4D0023BC44001FB83D001CB4360018AF2E0013A826000F9E1E000B9115000D84
      12001378130025752100457A3C006E8F6600CAD3C700F7F7F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F773900307B3B00327F3D00358741003C98490045AF550051BA600076C9
      8200000000006565650000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005BA5630033A54B0023AE460029BE53002BC4
      560026BF4D0022BB45001FB83D001BB4360018AF2F0014A9270010A21F000E99
      19000C8F1300128414001E781B0032762C00507D470098AC9100F2F4F1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000028663100296832002A6A33002D733700358741003FA14D0056BC640060C0
      6E0083CD8F000000000065656500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005BA5630034A64C0025B049002CC159002EC7
      5D002AC3550026BF4D0023BC45001FB83E001CB5370018B12F0014AC280010A5
      20000B9C1600098E0F000A790B00176E13002F6D27005B805100DFE3DD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      650000000000255D2D00255E2E0028663100307A3B003B9649004DB95C006CC5
      7B0070C679009AC69E0000000000656565000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005BA5630035A74D0026B14A002EC25C0031CA
      62002EC75C002BC4560027C04E0023BC46001FB83E001BB4360018B02F0013AA
      27000EA11D000B921400097E0C00147112002B6E2400577F4E00DFE3DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006565650000000000245B2C00276230002D723800378C440045AF550060C0
      6F007BCB830076C983009DC4A200000000006565650000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005CA6640036A84E0028B34D0030C45E0033CC
      660031CA62002EC75D002BC4560027C04E0022BA45001EB43B0019AC310015A3
      270011971D0012891800167C170027772400467C3F00849F7D00EFF1EE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006565650000000000255F2E0029693200317D3D003D9B4C004CB8
      5A0068C3780080CD8A0077C982009FC3A6000000000065656500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005DA7650039AB51002BB6500033C7610036CF
      690033CC650031CA62002EC75D002AC3550025BB4A001FAF3C0017A02C001490
      2000137E17001D741B0031732A00527E4900AFBEA900EFF1EE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000656565000000000026612F002C6F360034853F003FA1
      4D0051BA61006CC57B0081CD8B0078CA8200A5BFA90000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005DA765003BAD53002EB9530036CA640039D2
      6C0035CE680032CA63002FC55D0029BC520023B044001EA036001A8F28002082
      25002D792B0042783B005D825400ABB9A500F5F5F40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006565650000000000276230002D7237003587
      410041A5500053BB62006FC6790081CD8B0079CA8700A6C0AA00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005EA866003CAE540031BC560039CE68003CD5
      6F0038D06A0033C862002CBC560024AC45001C9933001B872700237825003A78
      35005F865800AEBCA900E1E6E000FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      6500000000000000000000000000000000006565650000000000276330002D73
      37003689430041A6510054BB64006AC477007DCB870086CC9200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005EA866003EB0560034BF59003DD26C003ED5
      6F0036C963002EBB550026A945002397380025863000317D3200467C42006989
      6100C7CFC300F7F7F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078CA820078CA820078CA820078CA820078CA820076C982000000
      0000000000000000000000000000000000000000000065656500000000002866
      32002E753800388E450041A651004FB95E0062C171006AC47500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005FA9670041B3590037C25C0040D56F003ED2
      6C002FB9530023A23E001D8A2C00267C2A003E793B005E835600BAC7B700EDEF
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000083CD8F0083CD8F0083CD8F008ACA92008DC996008DC996000000
      0000656565000000000000000000000000000000000000000000000000002968
      32002C703600317D3D00388E44003FA04E0045AF550049B75A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005FA8660041B2580034BB550039C45E0035BB
      570029A03F00268C3300307E3100457B3F006B876100C0C7BB00FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078CA820078CA82007BCB83007ECC870086CC920096C69E0099C5
      9D00000000000000000000000000000000000000000000000000000000003079
      3B00307A3B00317C3D0032803E0035874200388E440039914600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005EA765003EAD53002CAA4400269F3B002390
      3100247D2800367934005D855600ABB9A500E7EAE60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000059BD680059BD68005CBE690063C172006FC679007CCB8B008DCA
      9600000000000000000000000000000000000000000000000000000000003A94
      4700388F440035874100327F3D00307A3B0030793B0030793B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005DA261003A9D47002893350027852D002E7C
      2E003F7939005D825500BCC5B700F2F3F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D9B4C003D9B4C003FA04F0044AC53004FB95E0066C2740076C9
      83009DC69A00000000000000000000000000000000000000000058BD670045B0
      540045B054003F9F4D0036894200307A3B002B6D350029693200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C7DAC7005A995B0033843500287828003A763400557F
      4D00A3B39C00E1E5E00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000307B3B00307B3B0032803D00388E450040A24D0051BA5F006CC5
      7B006DC57A0097C79A009AC69E008FC7940081CD8B007CCB8B0065C274006AC4
      77005BBE6A0045AF550039914700307A3B002968320000000000656565000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3ECE300A1C0A000558C530050834B00698A6100B0BB
      AA00F0F1EE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000656565000000000027643000296832002D7337003689420041A5500057BC
      660071C77E0082CC880093C7990096C69E008FC794008CC8950081CD8B0074C8
      7F0060C06E0047B458003A934700307A3B002866310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006565650000000000245B2C00276430002E7538003990460045AE
      55005BBE6A006CC57B0077C984007BCB83007BCB83007ACA850076C983006AC4
      770057BC660043AA5300378C44002D7238000000000065656500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006565650000000000255E2E002A6A3300317C3D003A94
      470044AC53004DB95E0057BC66005ABE67005CBE69005ABE670057BC66004DB9
      5E0043AB52003A934800307B3B00000000006565650000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006565650000000000255F2E002A6B3400307A
      3B00368A42003C974A003D9C4B003F9F4D003F9F4D003F9F4D003D9C4B003C97
      4A00378C4400317C3D0000000000656565000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006565650000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065656500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E1E2E200676A6C00696A6D00686A6C00686A
      6C00686A6C00696A6D006A696D006F7370008A987B0068696E00696B6B00686A
      6D00686A6C00686A6C00686A6C00686A6C00686A6D00686A6C00D5D5D6000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECC5
      7500E2A42700E19F1B00E1A01D00E19E1600E19E1600E1A01C00E1A01C00E1A1
      2100EBC06A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBC0
      6A00E1A12100E1A01C00E1A01C00E19E1600E19E1600E1A01D00E19F1B00E2A4
      2700ECC575000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002830DB00333BDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000656BE500464DE00000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D300494C5000E1E2E400E1E3E400E1E3
      E400E1E3E400E2E2E300CBD0CA008AAB67008DB56100B0BCA800E2E2E400E0E2
      E500E1E3E400E1E3E400E1E3E400E1E3E400E2E3E5007E808300BDBEBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5AC3900E09E1500E099
      0100E09A0000E19B0000E19B0000E19B0000E19B0000E19B0000E19B0000E09A
      0000E0990100E09D1400E7B34900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7B34900E09D1400E099
      0100E09A0000E19B0000E19B0000E19B0000E19B0000E19B0000E19B0000E09A
      0000E0990100E09E1500E5AC3900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E35
      DC001D25DA001D25DA00343BDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005157
      E200232BDA00353CDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D30052545700FEFEFD00FFFEF100FFFF
      ED00FFFFF000F3F4E5009CB57E0092BC68008FBB5C0096AF7700FFFEF000FEFF
      EE00FFFFEE00FFFFEE00FFFFEE00FFFEF000FFFFFC008C8E9100BDBFBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7B24900E4A82700E19B0000E29D0000E29D
      0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D
      0000E29D0000E29D0000E19B0000E3A52200E9B9580000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E9B95800E3A52200E19B0000E29D0000E29D
      0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D0000E29D
      0000E29D0000E29D0000E19B0000E4A82700E7B2490000000000000000000000
      00000000000000000000000000000000000000000000000000003138DD001D25
      DA001D25DA001D25DA001D25DA00343BDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004047DF001E26
      DA00333ADD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00D4AA4500D693
      1100CC8D160098A05A009ABF6F0092BC650090BA5D0084B05300B5891B00D293
      1100D3930F00D3930F00D3930F00D59D3000FCFDF5008C8C9200BEBEBE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2A42600E3A10900E3A00000E3A00000E3A00000E3A0
      0000E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A0
      0000E3A00000E3A00000E3A00000E3A00000E3A00800E3A82F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E3A82F00E3A00800E3A00000E3A00000E3A00000E3A0
      0000E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A0
      0000E3A00000E3A00000E3A00000E3A00000E3A10900E2A42600000000000000
      00000000000000000000000000000000000000000000333ADD001D25DA001D25
      DA001D25DA001D25DA001D25DA001D25DA00343BDD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000353CDD001D25DA003239
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00DDBE6900D5A5
      36009DA25A009AC5750097C16D0092BC660092B95F0089B6550093963B00DFAD
      4000DFAD4000DFAD4000DFAD4000DCB45800FDFCF9008E8E9100C0BDC0000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2A22100E4A20000E4A20000E4A20000E4A20000E4A20000E4A2
      0000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E4A2
      0000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E2A221000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2A22100E4A20000E4A20000E4A20000E4A20000E4A20000E4A2
      0000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E4A2
      0000E4A20000E4A20000E4A20000E4A20000E4A20000E4A20000E2A221000000
      000000000000000000000000000000000000000000002A32DB001D25DA001D25
      DA001D25DA001D25DA001D25DA001D25DA001D25DA00373EDE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343BDD001D25DA002D34DC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00F3F6F200ACC0
      9900A0C87E00A0C17A0098C06D0092BB67008CBA5F008BB752007DAA4C00DFE7
      DB00FEFEFD00FEFEFD00FEFEFD00FCFEFC00FDFEFE00878F9100BEBDBF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4A82F00E5A40000E5A50000E5A50000E5A50000E5A50000E5A50000E5A5
      0000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A5
      0000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E2A5
      2700000000000000000000000000000000000000000000000000000000000000
      0000E2A42600E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A5
      0000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A5
      0000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A40000E4A9
      30000000000000000000000000000000000000000000000000003239DD001D25
      DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA003B42DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000343BDD001D25DA00262EDB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D30052535700F4F5F400AFC29B00AACA
      8800A3C680009DC2790098BF6F0092BC66008EBA5E008AB7530085B24C0097A0
      4F00E5B45200E3B55000E4B55000DFB45B00FDFDF5008C8E8F00BCBDC0000000
      000000000000000000000000000000000000000000000000000000000000E9BA
      5800E4A60700E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A7
      0000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A7
      0000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E5A7
      0800E7B34900000000000000000000000000000000000000000000000000E7B3
      4900E5A70800E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A7
      0000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A7
      0000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E6A70000E4A6
      0700E9BA5800000000000000000000000000000000000000000000000000343B
      DD001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA004047
      DF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000323ADD001D25DA002028DA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D2D3004F515600B3C3A500B0CC9100AAC8
      8A00A3C681009DC3760098BF6F0092BC650091B95E0088B7540085B4480078A6
      3900C58A0600DF940100D8940200D7941300FDFEEE008D8E8F00BEBEBF000000
      000000000000000000000000000000000000000000000000000000000000E5AA
      2100E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA
      0000E7AA0000E7AA0000E7AA0000E3A10000E5A50000E7AA0000E7AA0000E7AA
      0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA
      0000E6AD2500000000000000000000000000000000000000000000000000E6AD
      2600E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA
      0000E7AA0000E7AA0000E7AA0000E6A80000E09C0800E6A70000E7AA0000E7AA
      0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA0000E7AA
      0000E5AA21000000000000000000000000000000000000000000000000000000
      00003F46DF002129DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25
      DA00464CE0000000000000000000000000000000000000000000000000000000
      0000000000003037DD001D25DA001D25DA004047DF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D2D4D20072816700B4CF9B00AFCE8F00A9C9
      8A00A4C581009EC3760098BF6F0092BC65008FBA5E0086B7540088B4470081B0
      3E008CA16100F2EAD700F1ECD600F0ECDA00FEFEF7008A8E9200BBBEBF000000
      0000000000000000000000000000000000000000000000000000E8B54800E5A7
      0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC
      0000E8AC0000E7A90000E3A31700E2A21E00E6A80000E8AC0000E8AC0000E8AC
      0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC
      0000E6A90000E6AE3A0000000000000000000000000000000000E5AD3900E6A9
      0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC
      0000E8AC0000E8AC0000E8AC0000E7AA0000E3A82C00E5AC3600E3A51000E8AC
      0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC0000E8AC
      0000E5A70000E8B5490000000000000000000000000000000000000000000000
      0000000000006369E5002931DB001D25DA001D25DA001D25DA001D25DA001D25
      DA001F27DA004D53E1000000000000000000000000000000000000000000787D
      E8002B32DB001D25DA001D25DA00343BDD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CED7C500BDD3A500B5D19A00AECC9300A9C9
      8900A4C582009EC2780098BF6F0092BC65008EBA5C008AB7550081B5490080B1
      3F007BA73600D8DDC900FEFFEE00FCFEF200FCFFFC008E8D9000BEBDBF000000
      0000000000000000000000000000000000000000000000000000E2A31B00E9AF
      1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF
      1A00E4A61C00E4AB3500F9EDD600E6B14400E7AB1600E9AF1A00E9AF1A00E9AF
      1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF
      1A00E9AF1A00E3A31C0000000000000000000000000000000000E3A31C00E9AF
      1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF
      1A00E9AF1A00E9AF1A00E9AF1A00E8AD1800E4A93100FFFFFF00F3DAA700E1A1
      1D00E5A91700E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF1A00E9AF
      1A00E9AF1A00E2A31B0000000000000000000000000000000000000000000000
      00000000000000000000000000003138DD001D25DA001D25DA001D25DA001D25
      DA001D25DA002129DA00545AE3000000000000000000000000006166E400272E
      DB001D25DA001D25DA00333ADD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DBDFD600C3D8B000BCD5A400B4D19A00AECE8E00A9CA
      8800A3C77F009DC2770098BF6F0092BB68008EBA5C0088B6560082B34A0080B1
      3E0079B031008B8C2200D2931200CE952600FBFDF2008D8E8F00BBBDBF000000
      00000000000000000000000000000000000000000000ECC16D00E7AA2100EAB1
      2C00EAB12C00EAB12C00EAB12C00EAB12C00EAB12C00EAB12C00E5A92300E2A1
      2000F3DAA900FFFFFF00FFFFFF00E6B14500E8AD2600EAB12C00EAB12C00EAB1
      2C00EAB12C00EAB12C00EAB12C00EAB12C00EAB12C00EAB12C00EAB12C00EAB1
      2C00EAB12C00E6A81F00EEC779000000000000000000EDC67800E6A81F00E9AF
      2900E6A81F00E6A92000E6A92000E6A92100E6A92100E6A92100E7AA2200E7AA
      2200E7AA2200E7AB2300E7AB2300E5A71E00E4AA3400FFFFFF00FFFFFF00FEFE
      FE00EBC06900E3A52300E8AE2800EAB12C00EAB12C00EAB12C00EAB12C00EAB1
      2C00EAB12C00E7AA2100ECC16D00000000000000000000000000000000000000
      000000000000000000000000000000000000333BDD001D25DA001D25DA001D25
      DA001D25DA001D25DA002229DA005C62E400000000004C53E1002229DA001D25
      DA001D25DA003138DD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DCE1D800CDDEBD00C3DAAC00BCD5A300B4D19A00AFCC9300A9C9
      8A00A2C681009DC2780090B26B009CB37E0091AD6C008AB7520083B4480080B0
      40007DAE330074A22800C6A54800DFBD7200FDFEF5008E8E8F00BDBEBF000000
      00000000000000000000000000000000000000000000E2A42700EAB33800EBB4
      3900EBB43900EBB43900EBB43900EBB43900E8AE3000E3A42500EDC67900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7B34A00E2A32300E2A32400E2A32400E2A4
      2400E3A42500E3A42500E3A42500E3A42500E3A42600E3A52600E3A52600E3A3
      2200E8AE2F00EAB23600E3A72E000000000000000000E3A72E00EAB23600E9AF
      3100E4A93300EBC26D00EBC06B00EBBF6800EABF6700EABE6400EABD6100EABB
      5E00E9BA5C00E9B95A00E8B85700E8B75400EEC97F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FAEFDA00E4AB3600E6A92B00EBB43900EBB43900EBB43900EBB4
      3900EBB43900EAB33800E2A42700000000000000000000000000000000000000
      000000000000000000000000000000000000000000003C43DF002028DA001D25
      DA001D25DA001D25DA001D25DA00242CDA00262EDB001D25DA001D25DA001D25
      DA002B33DC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DCE0D900D3E3C700CADEBA00C3D9AE00BCD4A600B4D29900AFCE8F00A3BE
      87009AAE8700B7C2AE00E7ECE500FDFDFC00E2E8D90089AA610083B5460080B1
      3F007AAE340078AC21009BB47000FBFDFC00FEFEFC00898F9100BDBEBF000000
      00000000000000000000000000000000000000000000E3A52900ECB74700ECB7
      4700ECB74700ECB74700EBB54400E5A82E00E7B44E00FCF5E900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCF7EE00FDF9F200FDF8F000FCF8EF00FCF7
      EE00FCF6EB00FCF6EA00FBF5E800FBF4E700FBF4E500FBF3E300FBF2E100E8B6
      5100E9B03A00ECB74700E3A426000000000000000000E3A42700ECB74700E9B2
      3D00E6B14800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F2D7A000E2A22300E8AF3800ECB74700ECB7
      4700ECB74700ECB74700E3A52800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F65E4002930
      DB001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA00252D
      DA00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E2E6
      E100DAE7D100D0E3C200CADEBB00C2D8AE00AFC59A00ACBF9A00B1A35A00CAAE
      6000E8C87D00E7C68000E8C77F00E8C67E00E8C77E00B8A5520080AD48007EB1
      3F007DAE330079AB2200709E1500D2C39100FAFEF9008C8F8E00BABEBC000000
      00000000000000000000000000000000000000000000E5A93300EDBA5300EDBA
      5300EDBA5300E7AD3A00E3A62D00F6E5C100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8B5
      5100EAB34500EDBA5300E5AA33000000000000000000E5AA3400EDBA5300EAB4
      4700E7B24B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFDFB00EABD6400E4A83000ECB7
      4E00EDBA5300EDBA5300E5A93200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003038DD001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9EAE700E4EE
      DC00D9E7CD00D0DDC400C5D0BE00AFB5AC0053575900FDFCFD00DAA74000DD95
      0100E1920200DD930100DD930100DD930100DD920300DD9502009C8B260082B2
      3C007BAE350078AB240070AB04009E922900FBFEF9008F8C9100BCBEBE000000
      00000000000000000000000000000000000000000000E7AD3A00EEBD5C00E8B0
      4100E2A32700F0D19300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B5
      5000EBB64D00EEBD5C00E6AC3A000000000000000000E7AD3A00EEBD5C00EBB6
      4E00E7B44E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8EBD200E4A9
      3400E6AA3600EEBD5C00E6AC3A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E26DA001D25DA001D25DA001D25DA001D25DA001E26DA000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0F000E2E6E000DBE0
      D900E0E3DE00EDEDEC0000000000D2D2D30053535800FFFFFC00EEE2B700F2DA
      A700F1DAA600F3DAA700F4D9A700F4D9A700F3D9A600F4D9A700E6D5A8008BAB
      5F007AAF340077AB240070A809006A991600EEF2E7008A8E9000BCBDBE000000
      00000000000000000000000000000000000000000000E6AD3C00EFC06500E6AC
      3A00E4A93500F8EBD200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B4
      4E00ECB95600EFC06500E6AD3B000000000000000000E6AD3B00EFC06500ECB8
      5500E8B55100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0D19400E2A4
      2800E9B24800EFC06500E6AD3B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003239DD001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA002B33
      DB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EDEDED00E6E6E600F5F6F6000000
      0000000000000000000000000000D1D2D20051545600FEFFFF00FCFCFC00FDFD
      FB00FBFDFC00FEFEFD00FDFEFE00FDFEFE00FEFEFE00FEFDFC00FDFEFC00E7EA
      E1007CA5490077AE1F0072A807006CA6030098AD6D008B8D9100BEBEBE000000
      00000000000000000000000000000000000000000000E6AC3B00F0C37000F0C3
      7000EEC06900E5AB3900EABE6600FEFDFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B4
      4D00EDBC6000F0C37000E6AD3D000000000000000000E6AD3E00F0C37000ECBB
      5D00E8B65400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6E5C200E3A73000E9B24A00F0C3
      7000F0C37000F0C37000E6AC3A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002F36
      DC001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA001D25
      DA002D34DC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00DAAC4200DE9A
      0C00DD990A00DF960D00DE980C00DE980C00DE980C00DE980C00DE980C00DE98
      0C00C28C0C0077A01D006FA9070071A60200669610006F766B00BDBFBE000000
      00000000000000000000000000000000000000000000E4A93500F1C77A00F1C7
      7A00F1C77A00F1C77A00ECBB5F00E3A52A00F2D7A200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B3
      4C00EEBF6900F1C77A00E5AA37000000000000000000E5AA3800F1C77A00EDBD
      6400E8B85700FBF2E100FBF3E300FBF4E500FBF4E700FBF5E800FCF6EA00FCF6
      EB00FCF7ED00FCF8EF00FDF8F000FDF9F200FCF7EE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FCF5E900E8B55200E6AE4100F0C57600F1C77A00F1C7
      7A00F1C77A00F1C77A00E4A93500000000000000000000000000000000000000
      000000000000000000000000000000000000000000007277E7002A31DB001D25
      DA001D25DA001D25DA001D25DA002F37DC00000000003037DC001D25DA001D25
      DA001D25DA002F36DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00DFB45700DDA2
      2B00E1A12B00DEA32800DEA22900DEA22900DEA22900DEA22900DEA22900DEA2
      2900E0A12B00AB9635006FA60A006BA5030068A40100425D1D00BDBFBE000000
      00000000000000000000000000000000000000000000E5AB3900F0C67C00F2CA
      8400F2CA8400F2CA8400F2CA8400F2CA8400E9B45100E5AD3E00FAEFDA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EEC98100E9B85A00E9BA5E00E9BB6000EABC
      6200EABD6400EABE6600EBBF6A00EBC06C00EBC16D00ECC27000ECC37200E5AB
      3A00EFC37400F1C98300E3A62D000000000000000000E3A62D00F1C98300EEC0
      6D00E4A93600E5AA3800E5AA3700E5A93600E4A93500E4A83400E4A83400E4A8
      3300E4A83200E4A73100E3A73100E4A73000E7B45000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EDC87E00E4A93400EEC16F00F2CA8400F2CA8400F2CA8400F2CA
      8400F2CA8400F0C67C00E5AB3900000000000000000000000000000000000000
      0000000000000000000000000000000000005B61E400252DDB001D25DA001D25
      DA001D25DA001D25DA002A31DB00000000000000000000000000333BDD001D25
      DA001D25DA001D25DA003037DD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00FCFDF900FCFE
      F900FEFDFC00FEFFFA00FEFFFB00FEFFFB00FEFFFB00FEFFFB00FEFFFB00FEFF
      FB00FEFEF800FCFEF80094B163006EA5050067A50200598E0900BDC0BC000000
      00000000000000000000000000000000000000000000EABD6400EFC37200F3CE
      8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F1C98100E6AC3D00ECC2
      7000FEFEFE00FFFFFF00FFFFFF00E5AD3D00ECBC6200EEC27200EEC27000EEC1
      6F00EEC16E00EEC06D00EDC06B00EDBF6A00EDBF6900EDBF6900EDBE6800ECBD
      6600F1CA8400EFC27000EBBF68000000000000000000EABE6700EFC27100F3CE
      8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE
      8D00F3CE8D00F3CE8D00F3CE8D00F0C67A00E7B44E00FFFFFF00FFFFFF00F3DB
      AB00E2A52B00ECBC6400F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE8D00F3CE
      8D00F3CE8D00EFC37200EABE6500000000000000000000000000000000000000
      0000000000000000000000000000484EE0002129DA001D25DA001D25DA001D25
      DA001D25DA00222ADA000000000000000000000000000000000000000000373E
      DE001E26DA001D25DA001D25DA003138DC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00F4F1E200F1ED
      D700F0EDD900F2EDD800F2EDD900F2EDD900F2EDD900F2EDD900F2EDD900F2ED
      D900F1EBDC00F1ECDA00E6E3C800769C210068A4060060A10400AABE8D000000
      0000000000000000000000000000000000000000000000000000E7B04600F4D1
      9500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500EEC1
      7000E3A52C00F3DBAA00FFFFFF00E5AC3D00F2CC8B00F4D19500F4D19500F4D1
      9500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D1
      9500F4D19500E8B34C0000000000000000000000000000000000E8B34D00F4D1
      9500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D1
      9500F4D19500F4D19500F4D19500F0C88000E8B45000F9EDD600E6AE4100E9B6
      5500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D19500F4D1
      9500F4D19500E7B0460000000000000000000000000000000000000000000000
      000000000000000000003A41DE001D25DA001D25DA001D25DA001D25DA001D25
      DA001D25DA004A51E10000000000000000000000000000000000000000000000
      0000555BE300272EDB001D25DA001D25DA003239DD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00E0AC4000DD94
      0100DC930200DF920200DF930000DF930000DF930000DF930000DF930000DF93
      0000DF940100DF940000DE920200C48E0F006F9C1B0061A10300669B1E00F5F7
      F200000000000000000000000000000000000000000000000000E7B34C00F2CE
      8F00F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6
      A200F5D6A200EAB85C00E6B04700E5AC3D00F3D29800F5D6A200F5D6A200F5D6
      A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6
      A200F3D29A00E5AC3C0000000000000000000000000000000000E5AC3B00F3D3
      9B00F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6
      A200F5D6A200F5D6A200F5D6A200F1CB8900E3A62E00E6AF4500F3D09400F5D6
      A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6A200F5D6
      A200F2CE8F00E7B34C0000000000000000000000000000000000000000000000
      000000000000343BDD001D25DA001D25DA001D25DA001D25DA001D25DA001D25
      DA00373EDE000000000000000000000000000000000000000000000000000000
      000000000000000000002F36DC001D25DA001D25DA00333ADD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FEFFFF00E7CB8A00E6BD
      6100E5BC6200E8BC6200E7BC6100E7BC6100E7BC6100E7BC6100E7BC6100E7BC
      6100E7BB6400E7BC6100E7BC6000E2BE7000D5DEBF00639911005C9E0300B5C8
      9D0000000000000000000000000000000000000000000000000000000000E6AE
      4100F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DB
      AD00F7DBAD00F7DBAD00F4D39C00E4A83500F5D7A300F7DBAD00F7DBAD00F7DB
      AD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DB
      AD00EABB6000000000000000000000000000000000000000000000000000EBBB
      6100F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DB
      AD00F7DBAD00F7DBAD00F7DBAD00F2CD8B00EDC06E00F7DBAD00F7DBAD00F7DB
      AD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DBAD00F7DB
      AD00E6AE41000000000000000000000000000000000000000000000000000000
      0000343BDD001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA00333B
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000343BDD001D25DA001D25DA00333ADD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D30051545700FDFFFE00FDFDFC00FFFE
      FE00FCFEFE00FFFEFE00FEFEFF00FEFEFF00FEFEFF00FEFEFF00FEFEFF00FEFE
      FF00FEFFFC00FEFEFF00FEFFFE00FCFEFD00FEFDFB008DA474005C9A06006A9B
      2D00FBFCFB00000000000000000000000000000000000000000000000000EFCE
      8A00EFC57700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DF
      B700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DF
      B700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F6D9
      A700E7B34D00000000000000000000000000000000000000000000000000E7B3
      4C00F6D9A700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DF
      B700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DF
      B700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700EEC4
      7700F0CE8B00000000000000000000000000000000000000000000000000333B
      DD001D25DA001D25DA001D25DA001D25DA001D25DA001D25DA00323ADD000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000353CDD001D25DA001D25DA00343B
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D1D2D3003D404500B0B0B200B1B1B300B1B1
      B300B1B1B300B1B1B300B1B1B300B1B1B300B1B1B300B1B1B300B1B1B300B1B1
      B300B1B1B300B1B1B300B1B1B300B1B2B200B1B0B50064676A0052772600579B
      0400B3C4A3000000000000000000000000000000000000000000000000000000
      0000E8B44F00F5D7A200F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3
      C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3
      C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F7DDB100E6B0
      4500000000000000000000000000000000000000000000000000000000000000
      0000E6B04500F7DDB100F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3
      C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3
      C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F9E3C000F5D7A200E8B5
      50000000000000000000000000000000000000000000000000003138DD001D25
      DA001D25DA001D25DA001D25DA001D25DA001D25DA002E36DC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005157E200262DDB001D25
      DA00343BDD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8E8E90088898B008A898C0088898B008889
      8B0088898B0088898B0088898B0088898B0088898B0088898B0088898B008889
      8B0088898B0088898B0088898B0088898A0088888B0089888D00D2D5CF006F9F
      340060971F00F5F6F50000000000000000000000000000000000000000000000
      000000000000E9B85900F8E3BE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9
      CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9
      CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00F6DCAD00E9B859000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9B85800F6DCAD00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9
      CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9
      CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00F8E3BE00E9B859000000
      000000000000000000000000000000000000000000002E34DC001D25DA001D25
      DA001D25DA001D25DA001D25DA001D25DA00272FDB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007C81E9002F36
      DC001D25DA00343BDD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E5EA
      DF005B971800A5BD8F0000000000000000000000000000000000000000000000
      00000000000000000000E7B14800F9E6C600FCEFDB00FCEFDB00FCEFDB00FCEF
      DB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEF
      DB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00F1CE8D00E8B65300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E8B65300F1CE8D00FCEFDB00FCEFDB00FCEFDB00FCEF
      DB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00FCEF
      DB00FCEFDB00FCEFDB00FCEFDB00FCEFDB00F9E6C600E7B14800000000000000
      00000000000000000000000000000000000000000000343BDD001D25DA001D25
      DA001D25DA001D25DA001D25DA002129DA006066E40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000343BDD001D25DA00343BDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8E0D20060912700F9FAF900000000000000000000000000000000000000
      0000000000000000000000000000E7B55000EDC47600FBEFDD00FDF4E800FDF4
      E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4
      E800FDF4E800FDF4E800F9E8CC00E8B44F00F0D0910000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0D09100E8B44F00F9E8CC00FDF4E800FDF4
      E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4
      E800FDF4E800FDF4E800FBEFDD00EDC47600E7B5500000000000000000000000
      0000000000000000000000000000000000000000000000000000333BDD001D25
      DA001D25DA001D25DA001D25DA00444BE0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000353CDD00232BDA006D72E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B4C79F00B4C79F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6AF4200ECC16D00F7E5
      C200FDF9F300FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FCF3
      E500F8E6C500EABE6500E8B65400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8B65400EABE6500F8E6
      C500FCF3E500FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FEFAF400FDF9
      F300F7E5C200ECC16D00E6AF4200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003239
      DD001D25DA001D25DA00343BDD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006368E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009BAB8A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBC0
      6C00E4AB3800E7B55100EABE6600ECC47400EDC67800EABC6100E7B34D00E6B0
      4600EBBF69000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EBBF
      6900E6B04600E7B34D00EABC6100EDC67800ECC47400EABE6600E7B55100E4AB
      3800EBC06C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002E36DC00333ADD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F2EF00DDDFDC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBFBFB00424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFE00FFF0000000000000000
      FFFFFFFFFFE00FFF0000000000000000FFFFFFFFFFE00FFF0000000000000000
      FFFFFFFFFFE00FFF0000000000000000FC0FFFFFFFE00FFF0000000000000000
      FC03FFFFFFE00FFF0000000000000000FC01FFFFFFE00FFF0000000000000000
      FC007FFFFFE00FFF0000000000000000FC003FFFFFE00FFF0000000000000000
      FC000FFFFFE00FFF0000000000000000FC0007FFFFE00FFF0000000000000000
      FC0001FFFFE00FFF0000000000000000FC0000FFFFE007FF0000000000000000
      FC00003FFFE003FF0000000000000000FC00001FFFE001FF0000000000000000
      FC00001FFFE000FF0000000000000000FC00001FFFF0007F0000000000000000
      FC00001FFFF8003F0000000000000000FC00003FFFFC001F0000000000000000
      FC00007FFFFE001F0000000000000000FC0000FFF00F001F0000000000000000
      FC0003FFF00F801F0000000000000000FC000FFFF007C01F0000000000000000
      FC001FFFF007C01F0000000000000000FC007FFFF007C01F0000000000000000
      FC00FFFFF000001F0000000000000000FC03FFFFF000001F0000000000000000
      FC07FFFFF000003F0000000000000000FFFFFFFFF800003F0000000000000000
      FFFFFFFFFC00007F0000000000000000FFFFFFFFFE0000FF0000000000000000
      FFFFFFFFFF0001FF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFE00001F
      FFE007FFFFE007FFF3FFFFF3FE00001FFF8001FFFF8001FFE1FFFFE3FE00001F
      FE00007FFE00007FC0FFFFC7FE00001FFC00003FFC00003F807FFF8FFE00001F
      F800001FF800001F803FFF1FFE00001FF000000FF000000FC01FFE3FFE00001F
      E0000007E0000007E00FFC7FFE00001FE0000007E0000007F007F87FFE00001F
      C0000003C0000003F803E0FFFE00001FC0000003C0000003FE01C1FFFC00001F
      8000000180000001FF0083FFF800001F8000000180000001FF8007FFF000001F
      8000000180000001FFC00FFFE000001F8000000180000001FFF01FFFC000001F
      8000000180000001FFF81FFF8200001F8000000180000001FFF00FFF1E00001F
      8000000180000001FFE007FFFE00001F8000000180000001FF8083FFFE00001F
      8000000180000001FF01C1FFFE00001F8000000180000001FE03E0FFFE00001F
      C0000003C0000003FC03F07FFE00000FC0000003C0000003F807FC3FFE00000F
      E0000007E0000007F00FFE1FFE000007E0000007E0000007E01FFF0FFE000007
      F000000FF000000FC03FFF87FE000003F800001FF800001F807FFFC3FFFFFFE3
      FC00003FFC00003F807FFFF1FFFFFFF1FE00007FFE00007FC0FFFFF8FFFFFFF9
      FF8001FFFF8001FFE1FFFFFDFFFFFFFDFFE007FFFFE007FFF3FFFFFFFFFFFFFC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000
      000000000000}
  end
  object ImageList1: TImageList
    Left = 206
    Top = 308
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008627DE009543E400A766E900B988EE00C9A5F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000913BE3009F56E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008526E0009544E500A766E900B987EE00C8A5F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008422DF00903AE300A057E700AF74EB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008626E0009543E400A765E900B988EE00C8A5F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008323DF00913AE2009F56E700AF74EC00BD90EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008526DF009544E400A766E900B987EE00C8A5F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C12D8007C12D8008422E000903AE3009F56E700AE74EB00BD90EF00CAA8
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008626E0009543E400A766E900B987EE00C8A5F2000000
      0000000000000000000000000000000000000000000000000000000000007C12
      D8007C12D8007B12DD008323E000913AE3009F56E700AF74EB00BE91EF00CAA8
      F300D3B9F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008626E0009544E400A765E900B888EE00C9A5F2000000
      00000000000000000000000000000000000000000000000000007C12D8007C12
      D8007B12DD007B12DD008322E000903BE3009F56E700AF75EB00BD91EF00CBA8
      F300D3B9F500D3B9F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008626E0009544E500A765E900B988EE00C8A5F2000000
      000000000000000000000000000000000000000000007C12D8007C12D8007C12
      D8007C12D8007C12D8008423DF00913AE2009F57E700AF74EB00BD90EF00CAA8
      F300D3B9F500D3B9F500D3B9F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B12DD007B12DD007B12
      DD007B12DD007B12DB008626E0009543E400A765E900B988EE00C8A5F200D3B9
      F500D3B9F500D3B9F500D3B9F500000000000000000000000000000000000000
      0000000000007C12D8008323DF00903BE3009F57E700AF75EB00BE91EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B12DD007B12
      DD007B12DD007B12DD008526E0009644E400A766E900B888EE00C8A4F200D3B9
      F500D3B9F500D3B9F50000000000000000000000000000000000000000000000
      0000000000007C12D8008423E000903AE3009F56E700AF75EB00BD90EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B12
      DD007B12DD007B12DD008526E0009543E400A765E900B988EE00C9A5F200D3B9
      F500D3B9F5000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008423DF00913AE300A057E700AF75EB00BE91EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B12DD007B12DB008626DF009544E400A765E900B987EE00C9A5F200D3B9
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008423DF00903AE3009F57E700AE75EB00BD91EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B12DB008526DE009544E400A765E900B987EE00C9A5F2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008423DF00903BE3009F56E700AF74EB00BE91EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008626DE009544E400A766E900B988EE00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008422E000903AE3009F57E700AF75EC00BD90EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009544E400A766E90000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007C12D8008423DF00903BE3009F56E700AF74EB00BE91EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F81FFE7F00000000
      F81FFC3F00000000F81FF81F00000000F81FF00F00000000F81FE00700000000
      F81FC00300000000F81F8001000000008001F81F00000000C003F81F00000000
      E007F81F00000000F00FF81F00000000F81FF81F00000000FC3FF81F00000000
      FE7FF81F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object AccordImageList: TImageList
    Left = 38
    Top = 308
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FF00F7F7FF00F6F6FF00F6F6FF00FEFEFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFF
      FF00F7F7FF00F6F6FF00F6F6FF00FEFEFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5F5FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000F5F5FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F3FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF0000000000F2F3FF000000FF00000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F2F3FF000000FF00000000000000
      FF00000000000000000000000000B4B4B6000000000000000000000000000000
      00000000FF00000000000000FF0000000000F2F3FF000000FF00000000000000
      FF00000000000000000000000000B4B4B6000000000000000000000000000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFDFF000000FF000000FF000000
      FF00000000000000000000000000B4B5B5000000000000000000000000000000
      00000000FF000000FF000000FF0000000000FCFDFF000000FF000000FF000000
      FF00000000000000000000000000B4B5B5000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF120000FF70650000000000FF706500FF1200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000B4B4B5000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000FF12000000000000FF120000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF000000FF00EBECFD000000
      FF00000000000000000000000000B4B4B5000000000000000000000000000000
      00000000FF00000000000000FF0000000000FEFEFF000000FF00EBECFD000000
      FF00000000000000000000000000B4B4B500FF12000000000000000000000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFF000000FF00EFF0FF000000
      FF00000000000000000000000000B4B5B6000000000000000000000000000000
      00000000FF00000000000000FF0000000000FEFEFF000000FF00EFF0FF000000
      FF00000000000000000000000000FF12000000000000FF120000000000000000
      00000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000B4B5B6000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF000000000000000000FF120000FF70650000000000FF706500FF1200000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4B5B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4B5B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000B5B6B7000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000B5B6B7000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF00000000000000000000000000B6B7B80000000000C9CACA00C7C6C900C3C5
      C7000000FF00000000000000FF0000000000000000000000FF00000000000000
      FF00000000000000000000000000B6B7B80000000000C9CACA00C7C6C900C3C5
      C7000000FF00000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF00000000000000
      FF00000000000000000000000000E4E4E5000000000000000000000000000000
      00000000FF00FBFCFF000000FF0000000000000000000000FF00000000000000
      FF00000000000000000000000000E4E4E5000000000000000000000000000000
      00000000FF00FBFCFF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFE0FFE0000000000FF10FF100000000
      20752075000000002E752E75000000000E710E7100000000FE7FFC1F00000000
      8E718E31000000000E750E75000000000E750E35000000008E718C1100000000
      FE7FFE7F000000008E718E7100000000AE05AE0500000000AE01AE0100000000
      8FF18FF100000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu2: TPopupMenu
    OwnerDraw = True
    Left = 104
    Top = 240
    object N14: TMenuItem
      Caption = 'Показать вопрос в окне...'
      Enabled = False
      ShortCut = 114
    end
  end
  object MenuImages: TImageList
    Left = 101
    Top = 308
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0B6BB008135
      450075203200721B2E00A1697500E4D4D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0B6BB008135
      450075203200721B2E00A1697500E4D4D7000000000000000000E7BD6700EAB8
      5800E9BA5C00E9BA5C00E8BA5C00E8B95C00E9B95B00E9BA5C00EABB5D00EBBC
      5E00E8B75700EFD3980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4A
      5800690D2000670B1F00C5A4AB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4A
      5800690D2000670B1F00C5A4AB00000000000000000000000000EAB85800F0BE
      6100F0BF6600F0BF6500F0BF6500F0BF6500F0BF6500F0BE6500F0BE6400F0BF
      6600ECB54E00EBC5780000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4B
      5A00690C2000680C2000C4A1A900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4B
      5A00690C2000680C2000C4A1A900000000000000000000000000ECBF6900F1C5
      7500F2C87D00F2C87C00F2C87C00F2C87C00F2C87C00F2C87C00F2C87C00F1C9
      7E00EEBD6300E9C8830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B4B8
      F0008E92EB00B2B6F00000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000EBC47500F2C9
      8100F3CE9000F3CE8E00F3CE8E00F3CE8E00F3CE8E00F3CE8E00F3CE8E00F4CF
      9200EEC06C00ECCF930000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000555C
      E0000005D4005157E00000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000EAC78000F1CB
      8800F5D6A400F4D5A100F4D5A100F4D5A100F4D5A100F4D5A100F4D5A100F6D8
      A900EBBF6B00F2DEB20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E65
      E2000812D7005A5FE20000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000F1DBAE00EBC3
      7500FAE3BF00F9E0B600F8DFB600F7DEB500F8DEB500F9DFB600F9E0B700F8DF
      B700E8BB6600FBF4E60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4B8F0005D64E2005E65E2005E65
      E2000812D7005A60E2005E65E200555CE000B4B8F00000000000000000008E4A
      5900690C2000680C2000C4A0A800000000006D73E5005D64E2005E65E2005E65
      E2005E65E2005E65E2005E65E200555CE000B4B8F00000000000000000008E4A
      5900690C2000680C2000C4A0A80000000000000000000000000000000000E4BD
      6A00F7DEB400F9E9D000FFF1D300FFEED400FFF0D400FFEFD200F8E9D200F0D0
      9000EBCD8E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008E92EB000611D7000812D7000812
      D7000812D7000812D7000812D7000005D4008E92EB0000000000000000008E4A
      5900690C2000680C2000C4A0A800000000001F28DA000611D7000812D7000812
      D7000812D7000812D7000812D7000005D4008E92EB0000000000000000008E4A
      5900690C2000680C2000C4A0A800000000000000000000000000000000000000
      0000F0C87600000000007D787600D5CAAD00CCC1A8006D6B6B0000000000F1CD
      7D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B6F000595FE2005A60E2006067
      E2000812D700585EE2005A5FE2005157E000B2B6F00000000000000000008C47
      5600670A1D0066081C00C3A1A80000000000686FE400595FE2005A60E2005A60
      E2005A60E2005A60E2005A5FE2005157E000B2B6F00000000000000000008C47
      5600670A1D0066081C00C3A1A800000000000000000000000000000000000000
      000000000000645A460003000000805E18006A4E1500000000008E7F61000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006465
      E3000812D700585EE20000000000000000000000000000000000D9C6CB007E32
      420070182B006C122500A4717C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9C6CB007E32
      420070182B006C122500A4717C00000000000000000000000000000000000000
      00000000000000000000BD913E00F5C15F00F3BE5D00B3863800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006364
      E3000611D700575DE20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFDCAD00F0B95300FACF8100F2C87D00F2C87E00FACF8000ECB54C00F5E7
      C700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B7B5
      F0008E92EB00B1B5F0000000000000000000000000000000000000000000DFCD
      CF00AD7E8500D1B8BB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFCD
      CF00AD7E8500D1B8BB0000000000000000000000000000000000000000000000
      0000EDCA8200F1C98200F4D19600F3D09400F3D09400F4D19700F0C67B00EDD1
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D7D8007523
      3200610015006A0F2000D0B6B900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E5D7D8007523
      3200610015006A0F2000D0B6B900000000000000000000000000000000000000
      0000EECA8600F5D49C00F6DAAD00F6D9AB00F6D9AB00F7DBAE00F2D09600EDD1
      9300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C19DA2006507
      1B006F16290063031900A6717900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C19DA2006507
      1B006F16290063031900A6717900000000000000000000000000000000000000
      0000EED8A400F0CD8B00FBEAD200FAE6C700FAE6C800FBEBD000EDC57800F2E2
      BB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCCACB006D16
      270066071C0065081B00C4A3A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DCCACB006D16
      270066071C0065081B00C4A3A700000000000000000000000000000000000000
      000000000000E6C06E00F0D59E00F9EEDB00FAEED900EDCE8E00E9C77D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDB1
      B50096586200BE989D0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CDB1
      B50096586200BE989D0000000000000000000000000000000000000000000000
      00000000000000000000ECD49C00EAC88400E8C47700EDD7A700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6F1F200F0E7E900EFE6E800F7F2F300F6F0F100B689
      9300B6899300DCC7CC0000000000000000000000000060A0EE005A9AED005594
      EC005594EC0098C3F4004397D1002E8AC7002884C600227DC50069A7E00071AC
      F00067A4EF00619FED005C98ED008CB8F2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000095523F00B88C7F0094523E00A56D5D00924D
      3900000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0E7E9008C455400914D5B00F1E8EA00EDE1E4006F16
      29006F162900BA8F99000000000000000000A6CBF5005891EC004C6EE5001C30
      DB001B4ADF0081B5F10068A9E50086A3EF004E6EE5001B3DDD00448BE2006AA8
      EF007EA0EE004B6EE5001B3FDE004B8EEB000000000000000000F7F9FE00ECEF
      FC000000000000000000FBFCF900DAE8CB00FEFEFD0000000000000000000000
      0000F7ECDB00FAF2E60000000000000000000000000000000000000000000000
      000000000000C0998D00A7716100904B36008F4934008F4934008F4934008F49
      3400995A4700A064520000000000000000000000000000000000000000000000
      00000000000000000000F0E7E9007C2B3D0083364700A97580009D606D006F16
      2900BE979F00E5D6D9000000000000000000A6CBF5006396ED00556DE5001D25
      DA001B41DE0081B5F10068A9E50093A8F000556DE5001C30DB00448BE2006AA8
      EF0093A8F000556DE5001C2DDB004B8EEB000000000000000000D8DEF9000000
      FF000000000000000000EFF5E800219D0400FBFCF80000000000000000000000
      0000FF001200FF00120000000000000000000000000000000000000000000000
      000000000000C29C90008F4934008F4934008F4934008F4934008F4934008F49
      34008F4934009757430000000000000000000000000000000000000000000000
      00000000000000000000F0E7E9007B2A3C00833747008336470070182B006F16
      2900E5D6D900FBF8F9000000000000000000A6CBF5006396ED00556DE5001D25
      DA001B41DE0081B5F10068A9E50093A8F000556DE5001C30DB00448BE2006AA8
      EF0093A8F000556DE5001C2DDB004B8EEB000000000000000000EDF0FC00D2D8
      F8000000000000000000F8FAF500CBDFB400FDFEFC0000000000000000000000
      0000FF001200FF00120000000000000000000000000000000000000000000000
      0000C58A41009D562A00D98F0200A45C2500C4843000D4BAB200C39E93008F4A
      35008F4934008F49340096554100000000000000000000000000000000000000
      00000000000000000000F0E7E9007B2A3C0084384800F1E8EA00EBDFE1006F16
      29006F162900BB919A000000000000000000A6CBF500438EEA003A84E9003179
      E7003179E70082B5F1003D91DC002D85D800257DD7001E73D5004B94E2005199
      EC00468FEB003B84E9003077E7005496EC000000000000000000D8DDF9000000
      FF000000000000000000F0F5E700219D0400F8FAF30000000000000000000000
      0000EFDAB800F4E5CE0000000000000000000000000000000000F2D69F00EFCE
      8E00DD930000DD930000DD930000DD930000DF9A1200F3DAA800F5E0B700C09A
      8E008F4934008F493400A1665500000000000000000000000000000000000000
      00000000000000000000F0E7E9007B2A3C0084384800F1E8EA00EFE5E7008C45
      54008B435200C9A7AE000000000000000000B5D4F70060A0ED005B9BEC005594
      EC005594EC00ACCEF4007BC8870044B0540044B0540044B05400D1E9DD00F0F6
      FD00F0F6FD00F0F6FD00F0F6FD00ECF4FD000000000000000000FBFBFE000000
      FF00AFB9F20000000000F9FBF50075AB1300C8DDA00000000000000000000000
      0000FF001200FF00120000000000000000000000000000000000E3A72F00DD93
      0000DD930000DD930000DD930000DD930000DD930000DD930000E9BB5E00CCAC
      A3008F4934008F49340096554200000000000000000000000000000000000000
      00000000000000000000F0E6E9007B2A3B0084394900F1E8EA00000000000000
      000000000000000000000000000000000000A5CAF5005791EB004C6EE5001C31
      DB001B4BDF009AC4F4007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E4E7
      FB000000FF00EDEFFC0000000000B2D07A006FA80800DEEBC700000000000000
      0000FF001200FF001200F5E9D3000000000000000000E5AE3F00DF9A1000DD93
      0000DD930000DA900100D2890600DC920000DD930000DD930000DE9A1300C380
      23008F4934008F493400B88B7E00000000000000000000000000000000000000
      00000000000000000000F0E6E9007A293A00853A4A00F1E8EA00000000000000
      000000000000000000000000000000000000A5CAF5006395EC00556DE5001D25
      DA001B41DE009AC4F4007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF00C6CBF600FDFD
      FF000000FF00DCE0F90000000000FEFEFD0092BD4E007FB23100000000000000
      0000F7EEDC00FF001200FF001200FAF3E40000000000E8B75500DD930000DD93
      0000D89212009F5E3D008F493400A25B2700DA900100DD930000DD930000B46C
      1A008F493400924D3900AB76660000000000000000000000000000000000E8DA
      DD00C19BA300C29DA500DDC8CD007A293A00853A4A00C49FA700AB778200B283
      8D00E2D0D400000000000000000000000000A5CAF5006395EC00556DE5001D25
      DA001B41DE009AC4F4007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B9BEF3000000FF000000
      FF005865DE008DBB5400DFECCF0000000000CEE2B5005A9D0200000000000000
      000000000000F1E0BA00FF001200FF00120000000000DF990F00DD930000DD93
      0000EFCC8700D3B7AF008F4934008F493400CA810C00DD930000DD930000D88E
      030099532C00A166550000000000000000000000000000000000C5A2A9007018
      2B006F1629006F16290074203100A2687500A6707C00741F31006F1629006F16
      29006F162900CEB0B7000000000000000000A5CAF500448EEA003B85E9003279
      E7003279E7009AC4F4007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000DBDDF900C4C6
      F500F9F9FE006EAA2C00219D0400D6E7C40086B85000219D0400EEDAB100F6ED
      D8000000000000000000FF001200FF00120000000000E8B75600DD930000DD93
      0000E9BA5D00E0CDC800DAC3BC0097564000D2880700DD930000DD930000B46C
      1B00CDADA20000000000000000000000000000000000000000007F3041006F16
      29006F1629006F162900B1828C000000000000000000BA9099006F1629006F16
      29006F162900965563000000000000000000F5F9FD00F3F8FD00F3F8FD00F3F8
      FD00F3F8FD00F4F8FD007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000D7E7C700219D0400219D0400219D0400D4E0B800FF001200FF00
      12000000000000000000FF001200FF00120000000000E2A32600DD930000DD93
      0000DD930000EABC6100F1D49B00DA9B2A00DD930000DD930000DD930000D49E
      4B00000000000000000000000000000000000000000000000000965563006F16
      29006F1629006F16290098586600F7F3F400F9F6F6009E6370006F1629006F16
      29006F162900BA8F99000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FBFCF900E7F1DF00FBFDFA0000000000FF001200FF00
      1200FF001200FF001200FF001200FF0012000000000000000000E4AC3B00DD93
      0000DD930000DD930000DD930000DD930000DD930000DD930000E9BB5E000000
      0000000000000000000000000000000000000000000000000000F2EAEB00A269
      750079273800711A2D006F162900741E3000752033006F162900782637009350
      5E00C29DA500FDFCFC000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007DCA860045B2520045B2520045B25200DCF1DE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FAF5EC00FF00
      1200FF001200FF001200FF001200FDFBF8000000000000000000E3A83300E2A4
      2900DD930000DD930000DD930000DD930000DD930000E4A93400ECC270000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000792738006F1629006F1629006F1629006F1629008A4151000000
      000000000000000000000000000000000000B8E2BD0056B9620056B9620056B9
      620056B9620056B962004AB4570045B2520045B2520045B2520053B85F0056B9
      620056B9620056B9620056B9620066C071000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FBF7EF00FCF9F40000000000000000000000000000000000000000000000
      0000E09D1900E9BB5E00DD930000EABC6100E09D170000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C099A10070172A006F1629006F162900711A2D00CFB1B7000000
      000000000000000000000000000000000000B1DFB70045B2520045B2520045B2
      520045B2520045B2520045B2520045B2520045B2520045B2520045B2520045B2
      520045B2520045B2520045B2520056B962000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E5D5D800C099A100C29DA500EBDFE100000000000000
      000000000000000000000000000000000000C3E7C80071C47B0071C47B0071C4
      7B0071C47B0071C47B0071C47B0071C47B0071C47B0071C47B0071C47B0071C4
      7B0071C47B0071C47B0071C47B007ECA87000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F2D69D00EABC5F00E9BA5C00F0D29300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FE00DE960200E29E0000E6A81500EAB14200ECBD6500F0CC8900EFD192000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF000000000000000000000000000000
      0000000000000000000000000000848484008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5AE3E00E19F1700E09A0300E09B0000E09B0000E09B0300E2A21D00E6AF
      4000000000000000000000000000000000000000000000000000000000000000
      0000E7B34900E0990100E19B0000E19B0000E19B0000E09A0000E09E15000000
      00000000000000000000000000000000000000000000F1F8F00051B0400064B5
      5300DD970100E4A30000EAB01D00EFBD5D00F3CE8E00F9E3C100F4DDAF000000
      000000000000000000006DBEC6001EF7FF000000000000000000000000000000
      00000000000084848400C6C6C600FFFFFF00C6C6C60084008400000000000000
      000000000000000000000000000000000000000000000000000000000000E2A2
      1F00E3A10000E4A30000E4A30000E4A30000E4A30000E4A30000E4A30000E3A1
      0000E2A32100000000000000000000000000000000000000000000000000E3A0
      0800E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A00000E3A0
      0000E2A42600000000000000000000000000515AE3005A6FD4004BAD3A006AB6
      5B00DD970100E4A30000EAB01D00EFBD5D00F3CE8E00F9E3C100F4DDAF000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF000000000000000000000000008484
      8400C6C6C600FFFFFF00FFFFFF0084848400C6C6C600C6C6C600840084000000
      0000000000000000000000000000000000000000000000000000E2A42100E4A5
      0000E6A80000E6A80000E6A80000E6A80000E6A80000E6A80000E6A80000E6A8
      0000E4A50000E2A31F0000000000000000000000000000000000E5A50000E5A5
      0000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A50000E5A5
      0000E5A50000E4A9300000000000000000002836DC00415ED1004BAD3A006AB6
      5B00DD970100E4A30000EAB01D00EFBD5D00F3CE8E00F9E3C100F4DDAF000000
      0000000000009CF6FA006EF8FF001FF7FF000000000084848400C6C6C600FFFF
      FF00FFFFFF0084848400848484000000000084848400C6C6C600C6C6C6008400
      84000000000000000000000000000000000000000000E6B04000E6AA0000E8AD
      0000E8AD0000E8AD0000E7AC0000DF9A0600E5A50000E8AD0000E8AD0000E8AD
      0000E8AD0000E6AA0000E6AF3E000000000000000000E6AD2600E7AA0000E7AA
      0000E7AA0000E7AA0000E7AA0000E6A80000E6A70000E7AA0000E7AA0000E7AA
      0000E7AA0000E7AA000000000000000000002836DC00415ED1004BAD3A0067B6
      5C00D69A0900E4A30000EAB01D00EFBD5D00F3CE8E00F9E3C100F3DBAE000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF008400840084848400FFFFFF008484
      8400848484000000000000000000840084000000000084848400C6C6C600C6C6
      C6008400840000000000000000000000000000000000E4A82B00EAB23100EAB2
      3100EAB23100E5A92600E2A42800EBC06900E5A61F00E9B02E00E9B02E00E9B0
      2E00E9B02F00E9B02F00E2A221000000000000000000E9AF1A00E9AF1A00E9AF
      1A00E9AF1A00E9AF1A00E9AF1A00E8AD1800FFFFFF00E1A11D00E9AF1A00E9AF
      1A00E9AF1A00E9AF1A00E2A31B00000000002836DC00415BDA004BAC3B0067B6
      5C00B8A52C00E4A30000EAB01D00EFBD5D00F3CE8E00F7DDB200F5E2BC000000
      000000000000000000006DC4CD001FF7FF008400840084848400848484000000
      000000000000840084008400840084008400840084000000000084848400C6C6
      C600C6C6C600840084000000000000000000F1D29500E6AB3100ECB84C00E8B0
      3C00E2A42600F0D09000FFFFFF00F0CF8D00E4A93500E4A93300E4A83200E3A7
      3000E3A72F00E2A22300E5A62800F2D7A000E3A72E00E9AF3100EBC26D00EBBF
      6800EABE6400EABB5E00E9B95A00E8B75400FFFFFF00FFFFFF00FAEFDA00E6A9
      2B00EBB43900EBB43900EAB33800000000002D3BDD004258E2004B9C630067B6
      5D0087BC6D00D5A41700E9AF1D00EFBD5D00F1C87F00EFCE8F00FFFFFE000000
      0000CDF5F7009BF3F7006EF2F9001FF7FF008400840000000000000000008400
      8400840084008400840084008400840084008400840084008400000000008484
      8400C6C6C600C6C6C6008400840000000000FAEED700EAB54D00EAB85700EABC
      6200FDFAF500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E5AE4100E8B14400E8B55100E5AA3400EAB44700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EABD6400ECB74E00EDBA530000000000626CE5004258E200557CC4005DB0
      580080C178009BCA8C00D9A83300E6A92B00EBC3710000000000000000000000
      0000000000009BF5FA006EF8FF001FF7FF008400840084848400840084008400
      8400840084008400840000FFFF00008484008400840084008400840084000000
      000084848400C6C6C6000000000000000000EABE6600EBB95A00EABA5C00EECB
      8600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E6AF4200E9B55100EBBE6700E6AD3B00ECB85500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E2A42800EFC0650000000000D3D4F7004255E1005C73E6006E91
      CC005EB25900A0B65600F4D19500ECB74100E3A20900FBF4E700000000000000
      0000D2FBFE009DFBFF006EF8FF001FF7FF000000000084008400848484008400
      8400840084008400840084008400C6C6C60000FFFF0000FFFF00840084008400
      840000000000848484000000000000000000F1D29500EBB75800F3CC8A00EBB9
      5F00E3A62F00F6E4C000FFFFFF00F2D8A300EBBE6700EBC06B00EBC16E00ECC2
      7000ECC37200E4AA3700E9B55200F0D08F00E5AA3800EDBD6400FBF2E100FBF4
      E500FBF5E800FCF6EB00FCF8EF00FDF9F200FFFFFF00FFFFFF00FFFFFF00E8B5
      5200F0C57600F1C77A00F1C77A000000000000000000D5D7F8005562E300628F
      AC00AED9AD00C9C67C00F5D49F00ECB74100E3A00100F5E0B700000000000000
      000000000000000000006DC2CB001FF7FF000000000000000000840084008484
      8400840084008400840000848400008484008400840000FFFF0000FFFF008400
      84008400840000000000000000000000000000000000E5AA3700F5D49E00F5D4
      9E00F4D29B00E8B34F00E8B85800EBBF6900EAB85A00EFC47800EFC47700EEC3
      7500EEC27400EEC27300E6AE410000000000EABE6700F3CE8D00F3CE8D00F3CE
      8D00F3CE8D00F3CE8D00F3CE8D00F0C67A00FFFFFF00F3DBAB00ECBC6400F3CE
      8D00F3CE8D00F3CE8D00EFC372000000000000000000CACCF5008C9EEF0093BF
      B000B6DCB600B1BC6900F4D19700ECB74100E3A10700FBF4E500000000000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF000000000000000000000000008400
      840084848400840084008400840000FFFF0000FFFF0000FFFF00008484008400
      84008400840084008400000000000000000000000000E7B24A00F5D6A400F8DE
      B500F8DEB500F8DEB500F3D19700E3A52B00F2CE8E00F8DEB500F8DEB500F8DE
      B500F8DEB500F5D6A300E7B24B000000000000000000F3D39B00F5D6A200F5D6
      A200F5D6A200F5D6A200F5D6A200F1CB8900E6AF4500F5D6A200F5D6A200F5D6
      A200F5D6A200F5D6A200E7B34C000000000000000000B2B8F200A2B4F3007DAD
      AA00B6DCB60088C47F00ABAE4300EBBC5A00F4DEAE0000000000000000000000
      0000000000009CF5FA006EF8FF001FF7FF000000000000000000000000000000
      0000840084008484840084008400840084008400840084008400840084008400
      8400840084000000000000000000000000000000000000000000E4A83100F9E6
      C600FAE8CA00FAE8CA00FAE8CA00F9E6C600F7E0B800FAE8CA00FAE8CA00FAE8
      CA00F9E6C500E9B75500000000000000000000000000E7B34C00F8DFB700F8DF
      B700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DFB700F8DF
      B700F8DFB700EEC47700000000000000000000000000B2B7F100A2B4F3006784
      D90066A28A0082C47800BFE2BA00000000000000000000000000000000000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF000000000000000000000000000000
      0000000000008400840084848400840084008400840084008400840084000000
      000000000000000000000000000000000000000000000000000000000000E9B9
      5B00F9EAD000FDF4E700FDF4E700FDF4E700FDF4E700FDF4E700FDF4E700F9EA
      D000E4A934000000000000000000000000000000000000000000E9B85800FAE9
      CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9CE00FAE9
      CE00F8E3BE0000000000000000000000000000000000EFF0FC00808CEA005466
      E400959CED000000000000000000000000000000000000000000000000000000
      000000000000000000006DBBC5001FF7FF000000000000000000000000000000
      0000000000000000000084008400848484008400840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E7B55000E9BB5F00F3D9A500F7E7C700F7E8CA00F2D69E00E7B34B00E7B5
      500000000000000000000000000000000000000000000000000000000000F0D0
      9100F9E8CC00FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800FDF4E800EDC4
      760000000000000000000000000000000000000000000000000000000000FBFB
      FE00000000000000000000000000000000000000000000000000000000000000
      0000D1FDFF009DFBFF006EF8FF001FF7FF000000000000000000000000000000
      0000000000000000000000000000840084000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0D09100EBC26F00EBC06C00F1D39800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBBF6900E7B34D00EDC67800EABE6600E4AB3800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0FCFD00BCF8FA009EF6FA006BF5FA00424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFC0FFC0C0030000FFE1FFE1C0030000
      FFE1FFE1C0030000E3E1FFE1C0030000E3E1FFE1C0030000E3E1FFE1C0030000
      00610061E007000000610061F00F000000610061F81F0000E3C1FFC1F81F0000
      E3FFFFFFF00F0000E3E3FFE3F00F0000FFC1FFC1F00F0000FFC1FFC1F00F0000
      FFC1FFC1F81F0000FFE3FFE3FC3F0000FFFFFFFFFC0380000000FE0FFC030000
      4C73F803FC0300004C73F803FC0300004C73F001FC0300004C73C001FC030000
      4473C001FC3F000062318001FC3F000002308001E007000001388003C0030000
      400C8007C1830000780C800FC00300007C40C01FC00300007FC0C01FF81F0000
      7FF3F07FF81F0000FFFFFFFFFC3F0000FE7FFC3FFFFFE000F83FF00FF01F8000
      E01FE007E0070000800FC003C003000000078001800300000003800180010000
      0001000000010000000000000001006000000000000100208001000000018020
      C001800100018020E001800180018060F001C003800381E0F807E007C00787E0
      FC1FF00FE00FEFE0FE7FFC3FF83FFFE000000000000000000000000000000000
      000000000000}
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 104
    Top = 143
  end
  object Calc: TRxCalculator
    Title = 'Калькулятор'
    Left = 136
    Top = 272
  end
  object ToolMenu: TPopupMenu
    OwnerDraw = True
    Left = 135
    Top = 239
    object N23: TMenuItem
      Caption = 'Мелкие значки'
    end
    object N24: TMenuItem
      Caption = 'Большие значки'
      Checked = True
    end
    object N25: TMenuItem
      Caption = '-'
    end
    object N26: TMenuItem
      Caption = 'Подписи к кнопкам'
      Checked = True
    end
  end
  object ImageList2: TImageList
    Height = 32
    Width = 32
    Left = 72
    Top = 312
    Bitmap = {
      494C010105000900040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B87D2C00E3DFD700BAAC
      9900BAAC9900B36B1D00BB5F2200B55A2800B55A2800A23F11006A3119009587
      7D0095877D00DFD9D6003869C2003869C2003869C2003869C2003362C0003362
      C000749DDC00749DDC0079B2F10079B2F10070ABF00070ABF0006AA5EE006AA5
      EE0065A0EE0065A0EE0093BDF300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087653F00B3A28D00CA65
      0F00CA650F00B54E29008D623F00B54E2900B54E2900BC553400CA6449007E29
      09007E2909007A685D002046E0005D75E7005676E7005676E7002046E0002046
      E0005089E1005089E10074AFF00074AFF00086A6EF0086A6EF005277E7005277
      E7002047E1002047E1005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087653F00B3A28D00CA65
      0F00CA650F00B54E29008D623F00B54E2900B54E2900BC553400CA6449007E29
      09007E2909007A685D002046E0005D75E7005676E7005676E7002046E0002046
      E0005089E1005089E10074AFF00074AFF00086A6EF0086A6EF005277E7005277
      E7002047E1002047E1005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000087653F00B3A28D00CA65
      0F00CA650F00B54E29008D623F00B54E2900B54E2900BC553400CA6449007E29
      09007E2909007A685D002046E0005D75E7005D75E7005D75E7002238DE002238
      DE005089E1005089E10076B0F00076B0F0009AAEF1009AAEF1005D75E7005D75
      E7002234DE002234DE005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDAF3900993300009C36
      00009C360000A741000025600400A7410000A7410000A03A000099330000AF48
      2000AF482000C25F4C009B8E84005D75E7005D75E7005D75E7002238DE002238
      DE005089E1005089E10076B0F00076B0F0009AAEF1009AAEF1005D75E7005D75
      E7002234DE002234DE005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFB94F00B54F0000C15B
      0000C15B0000CC660000007A00000076000000760000C55F0000BA530000A43E
      0000A43E00006C66350066362200CFC8C2005D75E7005D75E7002238DE002238
      DE005089E1005089E10076B0F00076B0F0009AAEF1009AAEF1005D75E7005D75
      E7002234DE002234DE005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C45F0200FAC16F00DA74
      0000DA7400008689000042930000E8810000E8810000DF7900002F7900000069
      00000069000018660C0097410A00BFB7B3005D75E7005D75E7002238DE002238
      DE005089E1005089E10076B0F00076B0F0009AAEF1009AAEF1005D75E7005D75
      E7002234DE002234DE005395ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7600000FFD08B0085AD
      3C0085AD3C00C99C0800E49A0200FD970000FD970000F38C0000D17E00000076
      0000007600001F630000924D0B00C1B8B4003274D5003274D5002869D4002869
      D400568FE000568FE0005BA1EE005BA1EE005197ED005197ED00448BEB00448B
      EB00387DE900387DE9005B9CEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EE8800007F991400FFDF
      AF00FFDFAF0060CB65003ECD6800FFC96000FFC96000FFA51700F89100000C85
      00000C850000007200009D531900DAD3CD003274D5003274D5002869D4002869
      D400568FE000568FE0005BA1EE005BA1EE005197ED005197ED00448BEB00448B
      EB00387DE900387DE9005B9CEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5D5A50025BF4C003ACE
      6B003ACE6B00FFF0DA00E6F6DD00E3EEAB00E3EEAB00FFBF4C00D69A05005685
      00005685000055710000B3A89A00771B3000731E3700731E3700731E3700731E
      3700D1C5D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5D5A50025BF4C003ACE
      6B003ACE6B00FFF0DA00E6F6DD00E3EEAB00E3EEAB00FFBF4C00D69A05005685
      00005685000055710000B3A89A00771B3000731E3700731E3700731E3700731E
      3700D1C5D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5D5A50025BF4C003ACE
      6B003ACE6B00FFF0DA00E6F6DD00E3EEAB00E3EEAB00FFBF4C00D69A05005685
      00005685000055710000B3A89A00771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F500D49C23004BD4
      76004BD47600FCD57700EAF1BF00BDE8BB00BDE8BB0029C25200E6950400DF79
      0000DF790000BA925700E5BD8000D4CCBE00771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F500709EEE00E4A3
      4200E4A34200E4B33300AECE6A005BD179005BD17900ECDAA100D5920500A98C
      6600A98C6600771B3000DEB57500CDC4B300771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F500709EEE00709E
      EE005D75E7005D75E700232BDD00232BDD00232BDD00232BDD00A7CCF600E8B9
      7D00E8B97D00E1AA5B00DAC09A00771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F500709EEE00709E
      EE005D75E7005D75E700232BDD00232BDD00204CE100204CE100A7CCF6000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F500709EEE00709E
      EE005D75E7005D75E700232BDD00232BDD00204CE100204CE100A7CCF6000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F5005096ED005096
      ED00468AEB00468AEB00377AE800377AE800357BE800357BE800A8CDF6000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A1C8F5005096ED005096
      ED00468AEB00468AEB00377AE800377AE800357BE800357BE800A8CDF6000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3697600A3697600771B3000771B3000771B3000771B3000771B3000771B
      3000E1CED3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000985563009855
      6300985563009855630098556300985563009855630098556300985563009855
      6300822E4000822E4000771B3000771B3000771B3000771B3000771B3000771B
      3000904857009048570098556300985563009855630098556300985563009855
      630098556300985563009C5C6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000985563009855
      6300985563009855630098556300985563009855630098556300985563009855
      6300822E4000822E4000771B3000771B3000771B3000771B3000771B3000771B
      3000904857009048570098556300985563009855630098556300985563009855
      630098556300985563009C5C6A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B30007D263900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B3000771B3000771B3000771B3000771B3000771B3000771B
      3000771B3000771B30007D263900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F420087384A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F4200822F4200822F4200822F4200822F4200822F4200822F
      4200822F4200822F420087384A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FAFAFA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F1E0B800DD9B1200DE9D1200DF9F
      1200DFA11300E0A31A00E0A42500E1A72D00E2A93500E2AC3C00E3AE4300E3B2
      4A00E3B65400E6BC640000000000EDEFEF00D9F1F200BCF0F200A3EFF2008CEE
      F20075EDF2005EECF20035EBF20009EAF2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6C16C00EDC25E00EDC6
      6100EFCA6F00F5CE8700F3D49700F4DAA800F6E1B900F6E9CD00F2E9CF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F3EBD100E9BC6300EDC25E00EDC66100EFCA7400F2D08A00F4D5
      9A00F5DAAC00F5E4BB00F3E9CA0000000000C0C1C200A3A4A600D7D7D800D7D7
      D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7
      D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7
      D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800D7D7D800B1B0
      B20076787B00AAABAD00DCDDDE00000000000000000000000000000000000000
      000000000000000000000000000000000000F1DEB300DE960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBE5F00F1C67800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DA980E00E2990000E5A4
      0000E8AD1300EEB64500F1C36A00F5CE8E00F8DEB100FBF2DF00F8EDD2000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDDFB700DC920000E29C0000E7A60000E9AE1B00EEB95000F2C5
      7200F6D29500F9E3BA00FBF2DF000000000067696C005152560065676A006567
      6A0065676A0065676A0065676A0065676A0065676A0065676A0065676A006567
      6A0065676A0065676A0065676A0065676A0065676A0065676A0065676A006567
      6A0065676A0065676A0065676A0065676A0065676A0065676A0065676A004B4D
      51001A1D22003A3C41006E6F7200B6B6B8000000000000000000000000000000
      0000C3E3BD0062B8510064B9540066BA57008BAE3F00DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000F0F3F300E5FDFF00C9FCFE00ADFBFE0096F9
      FE007DF8FE0061F7FE0034F7FF0002F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DC9D1800E39E0000E6A8
      0000E9B01D00EEB84D00F1C47000F3D09200F7DDB400FBF1E100F8EDD2000000
      00000000000000000000E5EEEF00A2E1E30091E4E800B3E3E500F7F7F7000000
      000000000000EEE3BB00DE970000E3A00000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F8E2BC00FBEFDF0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FEFFFE00FEFFFE00FFFEFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFEFE00FEFFFE00FFFFFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FEFFFE00FEFFFE00FDFFFE00FFFFFF00EBEB
      EC00EAEBEB00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000B6DEAE0047AC350056B0490065B5590090AE4800DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000CAB1B600976A75008C697400826973007A68
      72007167720060BDC60034F7FF0002F6FF00000000000000000000000000B4EB
      F70099D1F40099D1F40091C9F30087C2F10084BCF0006FA8EE00DBEFFA00BAF1
      F800B4EBF70099D1F40099D1F40091C9F30087C2F10084BCF0007FB5EF006FA8
      EE00DBEFFA00B4EBF70099D1F40099D1F40091C9F30087C2F1007FB5EF006FA8
      EE00DBEFFA0000000000000000000000000000000000DC9D1800E39E0000E6A8
      0000E9B01D00EEB84D00F1C47000F3D09200F7DDB400FBF1E100F8EDD2000000
      000000000000E5EEEF0091E4E8006DF9FE0050FAFF001FEDF2008CE1E5000000
      000000000000EDDEB900DE970200E4A10000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F8E2BC00FBEFDF0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00BDC7F30095A6ED00EDF1FA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F9F3009CC2710093BD6500E1ECD300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFD00E1B97D00E0B57600E4BF8800FDFBF700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000005D64E2005E65E3005E67
      E300537F9F0047AC350056B0490065B5590090AE4800DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000F0F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FE0060F8FF0034F7FF0002F6FF0000000000000000000000000076C8
      F1006EB2F00075AAEE005A92EA00497CE6002D64E2000425D800BDD8F700B7E2
      F80076C8F1006EB2F00075AAEE005A92EA00497CE6002D64E200174CDD000425
      D800BDD8F70076C8F1006EB2F00075AAEE005A92EA00497CE600174CDD000425
      D800BDD8F70000000000000000000000000000000000DB9C1900E49D0000E5A8
      0000E9B01D00EEB84D00F1C47000F3D09200F7DDB400FEF4E300E7DCC200AFAB
      A500B1AAAA009FC1C30088F9FD006DF9FE0059F9FD0026F9FF0014E4E90096B2
      B600B1B0B400AE9A7300DE970000E4A10000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F8E2BC00FBEFDF0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00A4B2F1006C82E900E7ECFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F9F20094BD65008BB75800DEEBD000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFD00DDAE6700DCAA5F00E0B57400FDFAF500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E100447A9E0047AC350056B0490065B5590090AE4800DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008CC4
      F3009DBDF400A8B4F3008695ED00697AE800505FE3001713D800C4D5F700B9E1
      F9008CC4F3009DBDF400A8B4F3008695ED00697AE800505FE300353FDD001713
      D800C4D5F7008CC4F3009DBDF400A8B4F3008695ED00697AE800353FDD001713
      D800C4D5F70000000000000000000000000000000000DD9C1D00E49D0000E5A8
      0000E9B01D00EEB84D00F1C47000F3D09200F7DDB400FFF5E600DFD4B7008C89
      8000878383009FC1C30091FFFF0072F9FF0059F8FF0026F9FF0003F3FA00709B
      9D008E898F00AE9A7300E3970100E4A10000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F9E2BE00F7F0DC0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00A0AEF000657DE900E6EAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F6F8F1008FBB5E0086B55000DDEACD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFE00DCAB6100DCA75900E0B37000FDFAF500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E100447A9E0047AC350056B0490065B5590090AE4800DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E500E8BD660000000000E2D9DB00C6C4C900B1C3C900A7EFF40092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009BB1F1007D95ED00647CE8004C64E400171FD900C4D6F700B9E1
      F9008BC6F30093BAF3009BB1F1007D95ED00647CE8004C64E4003346DE00171F
      D900C4D6F7008BC6F30093BAF3009BB1F1007D95ED00647CE8003346DE00171F
      D900C4D6F70000000000000000000000000000000000E0A72F00E19D0000E6A8
      0000E9B01D00EEB84D00F1C47000F3D09200F7DDB400FEF3E100E2D8BD00B5B4
      AE00B1B0B400ACCECE0091FFFF0072F9FF0059F8FF0026F9FF0003F3FA0096B2
      B600BDB7B800C1B69F00E09B0900E4A10000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F9E2BE00F6EEDB0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00ECEFFA00E1E6FA00F9FAFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8FAF400AFCE8900A9CA7F00E6EFDA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFD00DBA85C00DAA45300DEB06A00FDFAF500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E100447A9E0047AC350056B0490065B559008EAF4900DF960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FCF3E400E8BD680000000000D9CACD00B7A2A900A4A0A800A6E8ED0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009CB1F1007E95ED00647CE8004C64E400171FD900C4D6F700B9E1
      F9008BC6F30093BAF3009CB1F1007E95ED00647CE8004C64E4003346DE00171F
      D900C4D6F7008BC6F30093BAF3009CB1F1007E95ED00647CE8003346DE00171F
      D900C4D6F70000000000000000000000000000000000E6C16C00E19A0000E5A8
      0000E9B01D00EEB84E00F2C47000F3D19100FADFB600F6E9CD00F3ECD9000000
      000000000000D0E8EA0088F9FD0072F9FF0059F8FF001DFAFF002CE1E600F7F7
      F7000000000000000000E1AE3B00E19D0000E8AA0000EAB12700EEBB5700F1C6
      7700F4D29800F9E4BD00F6E9CD0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00B2BDF3008495ED00E9EDFB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFE00FBFEF800FBFEF700FEFFFC00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFFFE00F0DCBD00EFDAB900F1DFC200FEFDFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E100447A9E0047AC350056B0490065B5590082B35600DE960000E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400FAEDD600E9C3750000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009CB1F1007E95ED00647CE8004C64E400171FD900C4D6F700B9E1
      F9008BC6F30093BAF3009CB1F1007E95ED00647CE8004C64E4003346DE00171F
      D900C4D6F7008BC6F30093BAF3009CB1F1007E95ED00647CE8003346DE00171F
      D900C4D6F70000000000000000000000000000000000F3F0DE00E0A91F00E7A2
      0000E9AE1B00EEB95000F1C47000F4D19100F7DBAE00F1E2C200000000000000
      00000000000000000000A2E1E30070F0F30056F6FA0038E7EB00B3E3E5000000
      00000000000000000000F1DFAA00DD9E0600E7A60000E8B12800EEBB5700F0C6
      7800F4D29B00F5DCAF00F0E8CC0000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF0098A7EE00556DE500D7DDF800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F8EF0086B447007CAD3900D8E7C400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAF5EC00F9F4EB00FAF6EE00FFFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E10044799F0047AB350056B0490065B5590073BA6700D5980A00E29D0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400F0D29800F2DEB30000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC5
      F3009ABCF400A5B3F2008695ED00697AE8004F60E4001716D800C4D5F700B9DF
      F8008BC5F3009ABCF400A5B3F2008695ED00697AE8004F60E4003441DD001716
      D800C4D5F7008BC5F3009ABCF400A5B3F2008695ED00697AE8003441DD001716
      D800C4D5F7000000000000000000000000000000000000000000F5ECD200E4B9
      4A00E6AE1F00E9B74A00F1C47000F3CE8E00F1DFBB0000000000000000000000
      00000000000000000000000000008CA0A200709B9D00C2CECF00000000000000
      0000000000000000000000000000F2E1B200E2B22A00E8B12800ECBB5300F2C7
      7700F3CC9500F2E6C8000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00A5B1F0004F67E40093A2ED00FAFBFC00FFFFFF00FFFFFF00FFFF
      FF00F6F9F10083B33B0078AC2A00CDE0B000FFFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00D7A24C00D69E4300DAAA5C00FCF9F200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E0004673B20046AB340056B0490065B5590070BB6900B1A63300E19C0100E4A3
      0000E7A90000EAB01C00ECB64300EFBD5F00F1C57800F4CF9000F6D9AA00FAE5
      C400E5B757000000000000000000E5DEE000CCCED300B3CDD3009ECCD3008BCC
      D30077CBD30061E5ED0034F7FF0002F6FF0000000000000000000000000081CB
      F2007BB6F10084AEF0006793EA00497CE6003866E2000425D800C1D7F700AEE9
      F60081CBF2007BB6F10084AEF0006793EA00497CE6003866E200224ADD000425
      D800C1D7F70081CBF2007BB6F10084AEF0006793EA00497CE600224ADD000425
      D800C1D7F7000000000000000000000000000000000000000000000000000000
      0000EFCC8700E7B03B00E7B03B00F1DFAA000000000000000000000000000000
      00000000000000000000000000009F999A00948D8D00D8D7D500000000000000
      000000000000000000000000000000000000FAF8E500EDC36D00E9AE3600E9B7
      4A00F4EFD500000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00CBD2F5005269E4005168E400BFC8F300FFFFFE00FFFFFF00FFFF
      FF00FDFEFB0084B4330074AB1800A0C45E00FFFEFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFE00D7A14900D59B3E00DAA85500F9F5EC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000212DDB003142DE003D53
      E0004966D70043A8360056B0490065B5590070BB690084BC6D00D59A0D00E4A2
      0100E7A90000EAB01C00ECB64300EFBD5F00F1C57800F3CF9000F6D9AA00ECC3
      7400F0DAA9000000000000000000D6C5C900B098A100A197A00092969F008596
      9D0076959D0062CFD70034F7FF0002F6FF000000000000000000000000009DE6
      F40076C8F10070BEEF0068B7ED0062B1EC005BACEC004D9BE900D4EDFA000000
      00009DE6F40076C8F10070BEEF0068B7ED0062B1EC005BACEC0057A4EB004D9B
      E900D4EDFA009DE6F40076C8F10070BEEF0068B7ED0062B1EC0057A4EB004D9B
      E900D4EDFA000000000000000000000000000000000000000000000000000000
      0000F2D29700EEBE5C00E8AA0D00E0AB2500F5ECD20000000000000000000000
      00000000000000000000000000009A9B9C008E8F9000D6D6D600000000000000
      0000000000000000000000000000FFFFFF00F1E2C200F3CE8E00EDBA4600E4A7
      0400E3B34900FAF8ED000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FAFAFD008594E900455BE2005166E300E3E7F800FFFFFF00FFFF
      FF00FFFFFF00A7C9630070A9010071A80200BAD48400FEFEFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00D9A54F00D4993700D7A14600F5E9D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000002732DB003142DE003D53
      E0004A61E4004595670055B0470065B5590070BB69007EC076009ABB6900D99C
      0D00E7A70100EAB01C00ECB64300EFBD5F00F1C57800F4CE8D00E9B95E00EBC9
      8300000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D2F10000C2E10000A2D1000092B1000072A1100062811000426
      1100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDDE
      B900F8D49B00F0BE5D00E8AD1300E0960000E9C97C0000000000000000000000
      00000000000000000000000000009A9B9C008E8F9000D6D6D600000000000000
      0000000000000000000000000000F7F3E700F6E3BD00F5CE8E00EEB84B00E6A9
      0600DE990000F0DDB1000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9F9FC006F80E6003F56E1007080E700FBFBFE00FFFF
      FF00FFFFFF00F1F6E70079AD17006DA6000075AB1000D3E3B200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DFB56C00D4972F00D4973000E4C48900FEFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000525AE1003142DE003D53
      E0004A62E4005477CC0049A9400064B5590070BB69007EC0760089C685009FC4
      7F00CAA83300E29F0F00E6A92A00E9AF3F00E7AD3E00E3AC4000F2DCAE000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF00000000000000000000000000B4EB
      F70099D1F40099D1F40091C9F30087C2F10084BCF0006FA8EE00DBEFFA000000
      0000000000000D2F100037D94B0032D34C002ACB4D0023C44E001BBC4F000426
      1100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1DF
      BB00F7D59E00F0BE5D00E8AD1300E3970100E9C0660000000000000000000000
      00000000000000000000000000009A9B9C008E8F9000D6D6D600000000000000
      0000000000000000000000000000FBF2DF00F9E7C500F5CE8E00EDBA4600E8A9
      0600DE970000EED5A0000000000000000000E0E0E100C1C1C200FFFEFD00FEFF
      FE00FDFEFD00FEFFFE00FFFFFF00D3D8F600475CE2004F61E400E2E6F900FFFF
      FF00FFFFFF00FFFFFE00C5DB9C006CA7080069A400007FB02600FAFAF400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00ECD6AB00D1962800D2952700D2962A00EDDB
      B500FEFEFE00FFFFFF00FFFFFF00FFFFFF0000000000999DEB002D3DDD003D53
      E0004A62E4005870E600568AAA0050AD430070BA68007EC0760089C6850096CC
      9300AEC78700DAA52D00E7AD3F00E5A82800E09C0800EFD59F00000000000000
      0000000000000000000000000000D5C1C500AD8E96009C8C9400A3E4E90092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF0000000000000000000000000076C8
      F1006EB2F00075AAEE005A92EA00497CE6002D64E2000425D800BDD8F7000000
      0000000000000D2F100038D94B0031D24C002ACB4D0023C44E001BBC4F000426
      1100000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1DF
      BB00F6D29500F0BE5D00E8AD1300DE970000ECD69D0000000000000000000000
      00000000000000000000000000009A9A9B008E8E8E00D3D3D200000000000000
      0000000000000000000000000000F9F6ED00F2DCB500F5CE8E00EEB84B00E7A7
      0200DB9A0200F2E6C8000000000000000000E0E0E100C1C1C200B2BBF100596B
      E300BAC0F100FEFEFE00FFFFFF00E0E4F8005061E3004659E200D9DEF800FFFF
      FF00FFFFFF00FFFFFE00FAFBF5009BC25C0064A2010064A20100A6C96E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F2E600D7A64500D0931D00D0931D00D196
      2300F0E3C400FEFFFF00FFFFFF00FFFFFF0000000000000000003C45DD003C52
      E1004A62E4005870E600657DE8006592B7004EA84E0064B657007AC073008DC5
      7F00D8AA3D00F4D29600F0C47200EBB64100E7AA0600DF9B0500F4E6C5000000
      0000000000000000000000000000E7E1E200CFD5D900B6D4D800A9F3F70092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008CC4
      F3009DBDF400A8B4F3008695ED00697AE800505FE3001713D800C4D5F7000000
      0000000000000D2F100038DA4B0031D24C002BCC4D0023C44E001BBD4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDD19200EEBB5700E6A81100E4B94A00000000000000000000000000E8C3
      7200E9B74A00EDBF4E00EDBE5600D3A85800D0AA6500E5C68A00F4DBAA00F1E2
      C200F0E8CC00000000000000000000000000F2E9CF00EFCC8700EDB64100E3A4
      0B00E9C97C00000000000000000000000000E0E0E100C1C1C200B8BFF1003043
      DE005664E200F8F9FD00FFFFFF00C6CBF4003A4AE0004859E100E8EBFB00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAFBF4007EB1320060A000006DA81700F4F8
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFE00F0E1BE00CE940F00CF910800CF91
      0900D8A83B00FBF8F000FFFFFF00FFFFFF000000000000000000C8CBF3003240
      DD004960E4005870E600657DE800758BEB007B9BD5004EAB480063B855008BA9
      3300F1D29700F5D49E00F0C37300ECB64100E7AA0500E29F0100E5B34C000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009BB1F1007D95ED00647CE8004C64E400171FD900C4D6F7000000
      0000000000000D2F100037D94B0031D34C002ACB4D0023C44E001CBC4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F0E3BD00EEE3BB0000000000000000000000000000000000DFA6
      2C00E0960000E4A20000E8AA0D00F3BB4300F6C46A00F5CE8700FADBA700FEF1
      D700F7F1DB0000000000000000000000000000000000F6EEDB00EDDFB700F6E8
      C70000000000000000000000000000000000E0E0E100C1C1C200EDEFFA00414F
      DF002B3BDD006571E400929BEB004552DF002B3BDD006676D100C9DFAE00B0CF
      8500FDFEFD00FFFFFF00FFFFFF00FFFFFF00C2DAA1005B9E000065A41000E5F0
      D800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFE00EAD59F00CE920700CD90
      0000CD900100E6CE8F00FEFFFE00FFFFFF00000000000000000000000000CFD0
      F3004751DF004356E1005D72E700708AE4005FAE6500ADD9AB009FD19D00BDAD
      4300FAE9CC00F6D49F00F0C37300ECB64100E7AA0500E39F0100DE9A11000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009CB1F1007E95ED00647CE8004C64E400171FD900C4D6F7000000
      0000000000000D2F100038DA4B0032D24C002BCB4D0023C44E001CBD4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3AA
      3300E4990000E7A60000E8AE1400EDB84900F0C16A00F2CD8B00F5DAAE00FCED
      DB00F7F0DC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FDFDFE009BA1
      EC002833DC002632DC002632DC002632DC00424EDF00A1BF8B00579C01005B9E
      0700E6F0D900FFFFFF00FFFFFF00FFFFFF00C7DDAA00579C010062A21100E5F0
      D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFBF600DEB96200CC8E
      0100CC8E0000CE951400FBFAF300FFFFFF000000000000000000000000000000
      0000000000005860E000323DDE00396D9300B6DEB400BBDEBB009FD19D00BFAD
      4400FAE9CD00F6D49F00F0C37300ECB64100E7AA0500E39F0100DD990E000000
      0000000000000000000000000000C6AAB0009A6975008F687400856873007D67
      71007466710062C4CE0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009CB1F1007E95ED00647CE8004C64E400171FD900C4D6F7000000
      0000000000000D2F100037D94B0032D34C002ACB4D0023C44E001BBD4F000426
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0AA
      3500E19A0000E5A70000E8AF1300EEB74700EFC26B00F2CD8B00F7DAAB00FCED
      DB00F7F0DC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FDFE
      FE00BEC2F1006F75E5005E65E2008B90EA00E6E7F900D6E6C300559B0400549A
      0200A8CB7F00FDFEFC00FFFFFF00FDFDFC0086B74D00539A010060A21600F1F7
      EB00FEFFFF00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F0E000CC8D
      0300CA8C0000CB8C0100F0E1BD00FFFFFF000000000000000000000000000000
      00008E92E8007888EA008A9FEE0063A77E00DAEFDE00BADEBC009FD19D00AEB2
      5200F3D7A300F6D49F00F0C37300ECB64100E7AA0500E39F0000E4AE41000000
      0000000000000000000000000000F0F3F300E4FDFF00C5FCFF00ABFBFF0093FA
      FF0078F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC6
      F30093BAF3009BB1F1007E95ED00647CE8004C64E400171FD900C4D6F7000000
      0000000000000D2F100038DA4B0031D24C002ACC4D0023C44E001BBD4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0AA
      3500E39B0000E5A70000E8AE1400EEB74700F0C16A00F2CD8B00F6DAAC00FCEE
      DA00F7F1DB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FDFEFD00FFFFFF00FFFFFF00EFF5E7006FAA2F004F98
      0000579C0C009DC57200BAD69C0083B74E004F9802004F9800008BB44D00E2C5
      8200DAB05600E2C48000FEFEFC00FFFFFF00FFFFFF00FFFFFF00FEFFFE00D39E
      2E00CA8A0000CA8A0100EBD8AC00FFFFFF00000000000000000000000000C4C6
      F2006E79E700AABDF5008A9FEE0068AB8000DBEFDE00BADEBC009FD19D008FC3
      7D00D8AC3F00F4D39A00F1C37300ECB64100E7AA0500E09B0300F2E0B8000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000008BC5
      F3009ABCF400A5B3F2008695ED00697AE8004F60E4001716D800C4D5F7000000
      0000000000000D2F100038D94B0032D34C002BCB4D0023C44E001BBC4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0AA
      3500E39B0000E5A70000E8AE1400EEB74700F0C16A00F2CD8B00F6DAAC00FCEE
      DA00F5EFDD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00ACCE8B004A96
      02004A9600004A9600004A9600004A9600004A9600005B9F1900E8E8CD00C98A
      0300C9890000D5A63F00FAF7EE00FFFFFF00FFFFFF00FFFFFF00FEFEFE00D19A
      2900C9890000C9890100ECD8AE00FFFFFF000000000000000000000000006169
      E400ABB5F200AABDF5008A9FEE005A9B8800CBE8CD00BADEBC009FD19D0088C6
      83008AB45600D2A32800E8B14500E7AB2C00E19E0C00EED19400000000000000
      0000000000000000000000000000E7E2E300D0D6DB00B7D5DB00A8F3F70092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF0000000000000000000000000081CB
      F2007BB6F10084AEF0006793EA00497CE6003866E2000425D800C1D7F7000000
      0000000000000D2F100037DA4B0031D34C002ACB4D0023C44E001CBD4F000426
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3B3
      4900E2990000E5A70000E8AE1400EEB74700F0C16A00F2CD8B00F7DAAB00FCEE
      DA00F6EEDB000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFCF80096C1
      6F0049960700469401004694010045950200589E1B00CCE2BA00FAF6EB00CD95
      1F00C8870000CA8C0C00F1E4C700FEFEFE00FFFFFF00FFFFFF00F5EDDA00C987
      0300C8870000C9870100F3E7CC00FFFFFF000000000000000000000000006169
      E400B9C3F500AABDF5008A9FEE00688BCE0076BF7100BADEBB009FD19D0089C6
      830072BC6A0055AE3F00D0D09200F1DCAE000000000000000000000000000000
      0000000000000000000000000000D4C2C500AD8F97009C8E9500A4E4E90092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000009DE6
      F40076C8F10070BEEF0068B7ED0062B1EC005BACEC004D9BE900D4EDFA000000
      0000000000000D2F100037D94B0031D34C002BCC4D0023C44E001BBD4F000427
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDCD
      8D00DE970000E6A80000E8AE1400EEB74700F0C16A00F2CD8B00F7DBAE00F7E7
      CB00F2EBD7000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFFFF00FFFE
      FE00E1EED600B0D19500A8CC8A00C1DBAC00F5F9F000FFFFFF00FCFBF700D8AC
      5400C7850000C7850000CD932200F0E3C200FEFEFA00F8F1DF00D5A74800C885
      0100C7850000CC942200FCFDFA00FFFFFF000000000000000000000000006169
      E400959FEE00AABDF5008A9FEE006E84EA005081AA0064B5600085C67E0078BF
      6F0058B24A00A4D59B0000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D2F100038DA4B0032D24B002BCB4D0023C44E001BBC4F000426
      1100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E5BC5B00E39E0000EAAE1100EDB84900EFC26B00F6CC8B00F6D6A900F1E2
      C200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAD6
      AB00C7840300C6820000C6820000C6830400C8880F00C4830400C6820000C682
      0000C6830300EAD7AC00FEFEFE00FFFFFF00000000000000000000000000C4C6
      F2006169E400A7B9F4008A9FEE006E84EA00556CE5003A57CE0068949E00ADD9
      A300E1F1DE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      00000000000000000000000000000F310F000F310F000F310F000F310F000F31
      0F000E300F000D2F100037D94B0031D34C002ACB4D0023C44E001CBC4F000427
      1100032511000224110001231100002212000022120000221200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6BB5400E9AE1B00EDB64100F0C16A00F2CF8B00EFD8AC000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E0E100C1C1C200FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FB00D9B06200C6810200C5810000C5810000C5810000C6810000C5810000C581
      0000D7AC5800FBFAF600FFFFFF00FFFFFF000000000000000000000000000000
      0000D0D3F500505BE1007082E900667BE8004356E200525BE000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D9CACD00B097A000A0969F0092959E008494
      9C0076939D0061C9D20034F7FF0002F6FF000000000000000000000000000000
      00000000000000000000000000000F310F0046E8490046E8490046E8490046E8
      490042E44A003EDF4A0037DA4B0031D34C002ACB4D0023C44E001CBC4F0015B6
      50000EAE510009A9520004A4530000A0530000A0530000221200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDD19200E9B74A00E4AE2E00E8CD8100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C9C9CA006E717400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FEFEFE00DCB97300C4830800C4800100C5800100C5800100C6820600DAB2
      6700FAF7EE00FFFFFE00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000009CA0ED008288E900AEB1EE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E0E200CDCFD400B4CED4009ECDD4008BCD
      D40077CCD40060E4EB0034F7FF0002F6FF000000000000000000000000000000
      00000000000000000000000000000F310F0046E8490046E8490046E8490046E8
      490042E44A003DDF4A0038D94B0031D24C002BCB4D0023C44E001CBC4F0014B5
      50000EAF510008A9520003A3520000A0530000A0530000221200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6EEDB00F4D29B00EFC26B00E7B01900E3A40B00F1DFBB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5D6D7008F919300FEFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FEFFFE00F4ECDB00E6CC9C00E2C28700E5CC9B00F5EDDC00FEFF
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      00000000000000000000000000000F310F0046E8490046E8490046E8490046E8
      490043E44A003EE04A0038DA4B0031D34C002ACB4D0023C44E001BBC500014B5
      50000EAF510009A8520004A4520000A0530000A0530000221200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6E3BD00F6D7A500F2C06800EBAE2200E09E0000E5BC5B000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFE0E000BDBDBF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F1F3F300E4FDFF00C5FCFF00ABFBFF0092FA
      FF0079F9FF0060F8FF0034F7FF0002F6FF000000000000000000000000000000
      00000000000000000000000000000F310F000F310F000F310F000F310F000F31
      0F000E300F000D2F10000C2E10000A2D1000092B1000072A1100062811000426
      1100032511000224110001231100002212000022120000221200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6E1B900F7D8A800F0C16700E9B02100E49D0000DEAF44000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEEEEE00E4E4E500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F3F300E3F0F100D4EFF100C7EFF100BAEF
      F100AEEEF100A1EEF1008BEDF10072ECF1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2E6C800F7D59E00F0C16700EAB01B00DE990000E9C97C000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFEFE0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECD69D00EEBE5C00EBAE2200E6BB5400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F0E8CC00F3E9CA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      80000001000000000000000000000000800007FF000000000000000000000000
      800007FF000000000000000000000000800007FF000000000000000000000000
      800007FF000000000000000000000000800007FF000000000000000000000000
      800007FF000000000000000000000000801007FF000000000000000000000000
      801007FF000000000000000000000000801007FF000000000000000000000000
      801007FF000000000000000000000000FFF007FF000000000000000000000000
      FFF007FF000000000000000000000000FFF007FF000000000000000000000000
      FFF007FF000000000000000000000000FFF007FF000000000000000000000000
      FFF007FF000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C0000001000000000000000000000000C0000001000000000000000000000000
      C000000100000000000000000000000080000000FF000200FFFFFFFF801FF801
      00000001FF00020080000001801FF80100000000F0000200BFFFFFFD801C1801
      00000000F0000200A0000005801818010000000080000200A000000580000001
      0000000080000200A0000005800000010000000080000200A000000580000001
      0000000080000200A000000580180C010000000080000200A0000005803C1C01
      0000000080000200A0000005C07E3E030000000080000600A0000005F0FE3F07
      0000000080000600A0100005F07E3E030000000080000E00BFF80FFDE07E3E03
      0000000080001E00A0180FFDE07E3E030000000080003E00A0180FFDE07E3E03
      00000000C0001E00A0180FFDF0E0070700000000C0001E00A0180FFDF9E0078F
      00000000E0001E00A0180FFDFFE007FF00000000F8001E00A0180FFDFFE007FF
      00000000F0001E00A0180FFDFFE007FF00000000E0001E00A0180FFDFFE007FF
      00000000E0003E00A0180FFDFFE007FF00000000E000FE00A0180FFDFFE007FF
      00000000E003FE00BFF80FFDFFF00FFF00000000E007FE00BE00003DFFF81FFF
      00000000F03FFE00BE00003DFFFC3FFF00000000FC7FFE00BE00003DFFF81FFF
      00000000FFFFFE00BE00003DFFF81FFF00000000FFFFFE00BE00003DFFF81FFF
      00000000FFFFFE00BFFFFFFDFFF81FFF40000000FFFFFFFF80000001FFFC3FFF
      00000000FFFFFFFFFFFFFFFFFFFE7FFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu3: TPopupMenu
    Images = MenuImages
    OwnerDraw = True
    Left = 72
    Top = 240
    object N18: TMenuItem
      Caption = 'Добавить локальный тест...'
      ImageIndex = 7
      OnClick = N18Click
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object N20: TMenuItem
      Caption = 'Удалить тест...'
      OnClick = N20Click
    end
    object N49: TMenuItem
      Caption = '-'
    end
    object N50: TMenuItem
      Caption = 'Удалить все тесты с рабочего стола...'
      OnClick = N50Click
    end
  end
  object bz: Tbzip2
    BlockSize = 1
    BufferSize = 32
    Left = 105
    Top = 272
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 40
    Top = 144
  end
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    OnError = ClientSocketError
    Left = 232
    Top = 178
  end
  object ClientTestSocket: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientTestSocketConnect
    OnDisconnect = ClientTestSocketDisconnect
    OnRead = ClientTestSocketRead
    OnError = ClientTestSocketError
    Left = 169
    Top = 177
  end
  object ClientShablonSocket: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientShablonSocketConnect
    OnDisconnect = ClientShablonSocketDisconnect
    OnRead = ClientShablonSocketRead
    OnError = ClientShablonSocketError
    Left = 201
    Top = 178
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientSocket1Connect
    OnDisconnect = ClientSocket1Disconnect
    OnRead = ClientSocket1Read
    OnError = ClientSocket1Error
    Left = 40
    Top = 176
  end
  object ClientSocket2: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientSocket2Connect
    OnDisconnect = ClientSocket2Disconnect
    OnRead = ClientSocket2Read
    OnError = ClientSocket2Error
    Left = 72
    Top = 176
  end
  object ClientSocket3: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    OnConnect = ClientSocket3Connect
    OnDisconnect = ClientSocket3Disconnect
    OnRead = ClientSocket3Read
    OnError = ClientSocket3Error
    Left = 104
    Top = 176
  end
  object ClientSocket4: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = ClientSocket4Connect
    OnDisconnect = ClientSocket4Disconnect
    OnWrite = ClientSocket4Write
    OnError = ClientSocket4Error
    Left = 136
    Top = 144
  end
  object ActionList1: TActionList
    Left = 72
    Top = 272
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 112
      OnExecute = Action1Execute
    end
  end
  object Timer3: TTimer
    Enabled = False
    Interval = 500
    Left = 72
    Top = 144
  end
  object XPMenu1: TXPMenu
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Color = clBtnFace
    IconBackColor = clBtnFace
    MenuBarColor = clBtnFace
    SelectColor = clHighlight
    SelectBorderColor = clHighlight
    SelectFontColor = clMenuText
    DisabledColor = clInactiveCaption
    SeparatorColor = clBtnFace
    CheckedColor = clHighlight
    IconWidth = 24
    DrawSelect = True
    UseSystemColors = True
    OverrideOwnerDraw = False
    Gradient = False
    FlatMenu = False
    Active = True
    Left = 40
    Top = 272
  end
  object AbortSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnConnect = AbortSocketConnect
    OnError = AbortSocketError
    Left = 312
    Top = 176
  end
  object Timer4: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer4Timer
    Left = 40
    Top = 360
  end
  object Timer5: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer5Timer
    Left = 72
    Top = 360
  end
  object Timer6: TTimer
    Enabled = False
    Interval = 600
    OnTimer = Timer6Timer
    Left = 104
    Top = 360
  end
  object PopupMenu4: TPopupMenu
    Images = AccordImageList
    OwnerDraw = True
    Left = 136
    Top = 360
    object N54: TMenuItem
      Caption = 'Установить соответствие'
      ImageIndex = 0
      OnClick = N54Click
    end
  end
  object PopupMenu5: TPopupMenu
    Images = AccordImageList
    OwnerDraw = True
    Left = 168
    Top = 360
    object N55: TMenuItem
      Caption = 'Удалить соответствие'
      ImageIndex = 1
      OnClick = N55Click
    end
  end
end
