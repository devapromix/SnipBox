object NewForm: TNewForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'New Snippet'
  ClientHeight = 508
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
    Top = 62
    Width = 66
    Height = 13
    Caption = 'Snippet Name'
  end
  object Label3: TLabel
    Left = 8
    Top = 35
    Width = 45
    Height = 18
    Caption = 'Category'
  end
  object SpeedButton1: TSpeedButton
    Left = 447
    Top = 8
    Width = 26
    Height = 22
    Caption = '+'
  end
  object SpeedButton2: TSpeedButton
    Left = 447
    Top = 34
    Width = 26
    Height = 22
    Caption = '+'
  end
  object btOK: TBitBtn
    Left = 176
    Top = 448
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object btCancel: TBitBtn
    Left = 257
    Top = 448
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object RichEdit: TRichEdit
    Left = 8
    Top = 89
    Width = 531
    Height = 353
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 2
    Zoom = 100
  end
  object edSnipName: TEdit
    Left = 176
    Top = 62
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object edSnipLanguage: TComboBox
    Left = 176
    Top = 8
    Width = 265
    Height = 21
    TabOrder = 4
  end
  object edSnipCategory: TComboBox
    Left = 176
    Top = 35
    Width = 265
    Height = 21
    TabOrder = 5
  end
end
