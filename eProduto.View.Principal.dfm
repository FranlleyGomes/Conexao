object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 411
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 159
    Width = 874
    Height = 227
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 736
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 386
    Width = 874
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 240
    ExplicitTop = 392
    ExplicitWidth = 240
  end
  object Edit1: TEdit
    Left = 88
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button2: TButton
    Left = 248
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    Left = 712
    Top = 64
  end
end
