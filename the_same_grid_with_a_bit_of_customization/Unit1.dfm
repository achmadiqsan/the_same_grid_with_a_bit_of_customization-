object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 466
  ClientWidth = 788
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
    Left = 8
    Top = 32
    Width = 772
    Height = 241
    DataSource = DataSource1
    DefaultDrawing = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
  end
  object DBNavigator1: TDBNavigator
    Left = 328
    Top = 360
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 160
    Top = 320
  end
  object FDMemTable1: TFDMemTable
    Active = True
    OnCalcFields = FDMemTable1CalcFields
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 48
    Top = 304
    object FDMemTable1FullName: TStringField
      FieldName = 'FullName'
      Size = 50
    end
    object FDMemTable1TotalExams: TIntegerField
      FieldName = 'TotalExams'
    end
    object FDMemTable1PassedExams: TIntegerField
      FieldName = 'PassedExams'
    end
    object FDMemTable1PercPassedExams: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PercPassedExams'
      Calculated = True
    end
    object FDMemTable1MoreThan50Percent: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'MoreThan50Percent'
      Calculated = True
    end
  end
end
