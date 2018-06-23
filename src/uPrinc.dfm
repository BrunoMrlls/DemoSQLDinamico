object form1: Tform1
  Left = 0
  Top = 0
  Caption = 'DemoSQL'
  ClientHeight = 408
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 467
    Top = 80
    Width = 222
    Height = 73
    Caption = 'Tecle [DELETE] ou [DUPLO CLIQUE] no filtro para deletar.'
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    WordWrap = True
  end
  object m1: TMemo
    Left = 0
    Top = 248
    Width = 715
    Height = 160
    Align = alBottom
    Lines.Strings = (
      'm1')
    TabOrder = 0
  end
  object pn0: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 49
    Align = alTop
    ParentShowHint = False
    ShowCaption = False
    ShowHint = False
    TabOrder = 1
    object cbCampo: TComboBox
      Left = 71
      Top = 13
      Width = 145
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 0
      Text = 'SELECIONE O CAMPO'
      Items.Strings = (
        'SELECIONE O CAMPO'
        'DATA'
        'VALOR'
        'TIPO MOVIMENTO'
        'HIST'#211'RICO')
    end
    object cbOper: TComboBox
      Left = 231
      Top = 13
      Width = 68
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 1
      Text = '='
      Items.Strings = (
        '='
        '>'
        '<'
        '<>'
        'CONT'#201'M')
    end
    object edtvrl: TEdit
      Left = 305
      Top = 13
      Width = 145
      Height = 21
      TabOrder = 2
      TextHint = 'Valor'
    end
    object btnMore: TBitBtn
      Left = 456
      Top = 12
      Width = 57
      Height = 23
      Caption = '+'
      TabOrder = 3
      OnClick = btnMoreClick
    end
    object cbOperLog: TComboBox
      Left = 20
      Top = 13
      Width = 37
      Height = 21
      AutoDropDown = True
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 4
      Text = 'E'
      Items.Strings = (
        'E'
        'OU')
    end
  end
  object lstFiltro: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 441
    Height = 193
    Align = alLeft
    ItemHeight = 13
    TabOrder = 2
    OnDblClick = lstFiltroDblClick
    OnKeyDown = lstFiltroKeyDown
    ExplicitLeft = 0
    ExplicitTop = 49
    ExplicitHeight = 199
  end
  object btnSearch: TBitBtn
    Left = 519
    Top = 11
    Width = 118
    Height = 25
    Caption = 'Consultar'
    TabOrder = 3
    OnClick = btnSearchClick
  end
end
