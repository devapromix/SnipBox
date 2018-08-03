object SnipForm: TSnipForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Snippet'
  ClientHeight = 506
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Language'
  end
  object Label2: TLabel
    Left = 8
    Top = 70
    Width = 66
    Height = 13
    Caption = 'Snippet Name'
  end
  object Label3: TLabel
    Left = 8
    Top = 38
    Width = 45
    Height = 13
    Caption = 'Category'
  end
  object btOK: TBitBtn
    Left = 319
    Top = 467
    Width = 107
    Height = 33
    Cancel = True
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 4
    OnClick = btOKClick
  end
  object btCancel: TBitBtn
    Left = 432
    Top = 467
    Width = 107
    Height = 33
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object RichEdit: TRichEdit
    Left = 8
    Top = 89
    Width = 531
    Height = 372
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    PlainText = True
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 3
    Zoom = 100
  end
  object edSnipName: TEdit
    Left = 144
    Top = 62
    Width = 395
    Height = 21
    TabOrder = 2
  end
  object edSnipLanguage: TComboBox
    Left = 144
    Top = 8
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object edSnipCategory: TComboBox
    Left = 144
    Top = 35
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 104
    object Undo1: TMenuItem
      Action = EditUndo1
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cut1: TMenuItem
      Action = EditCut1
    end
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Paste1: TMenuItem
      Action = EditPaste1
    end
    object Delete1: TMenuItem
      Action = EditDelete1
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SelectAll1: TMenuItem
      Action = EditSelectAll1
    end
  end
  object ActionList1: TActionList
    Left = 488
    Top = 104
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
  end
end
