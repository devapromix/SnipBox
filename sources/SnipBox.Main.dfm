object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'SnipBox'
  ClientHeight = 457
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter: TSplitter
    Left = 193
    Top = 28
    Height = 429
    AutoSnap = False
    MinSize = 200
    ExplicitLeft = 202
    ExplicitTop = 8
    ExplicitHeight = 457
  end
  object TreeView: TTreeView
    Left = 0
    Top = 28
    Width = 193
    Height = 429
    Align = alLeft
    Indent = 19
    TabOrder = 0
    ExplicitLeft = 251
    ExplicitTop = 0
    ExplicitHeight = 457
  end
  object RichEdit: TRichEdit
    Left = 196
    Top = 28
    Width = 572
    Height = 429
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    Zoom = 100
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 768
    Height = 28
    AutoSize = True
    ButtonHeight = 28
    ButtonWidth = 28
    EdgeInner = esNone
    EdgeOuter = esNone
    Images = ImageList
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
  end
  object ImageList: TImageList
    Left = 240
    Top = 80
  end
end
