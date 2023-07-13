object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'A 3-minute Smart Contract and Delphi '#8212' Part 2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 16
    Top = 8
    Width = 121
    Height = 25
    Caption = 'getNumber'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 51
    Width = 121
    Height = 25
    Caption = 'incrementNumber'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 95
    Width = 121
    Height = 25
    Caption = 'setNumber'
    TabOrder = 2
    OnClick = Button3Click
  end
end
