object dmMod3: TdmMod3
  OldCreateOrder = False
  Height = 154
  Width = 223
  object qryGeral: TFDQuery
    Connection = dmMod.fdConPrinc
    Left = 120
    Top = 40
  end
  object tbusuario: TFDTable
    Connection = dmMod.fdConPrinc
    UpdateOptions.UpdateTableName = 'SENHAS'
    TableName = 'SENHAS'
    Left = 32
    Top = 32
    object tbusuarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object tbusuarioUSUARIO: TWideStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 13
    end
    object tbusuarioCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
    end
    object tbusuarioULTIMOACESSO: TDateField
      FieldName = 'ULTIMOACESSO'
      Origin = 'ULTIMOACESSO'
    end
    object tbusuarioSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 9
    end
    object tbusuarioNIVEL: TWideStringField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA1: TWideStringField
      FieldName = 'A1'
      Origin = 'A1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA2: TWideStringField
      FieldName = 'A2'
      Origin = 'A2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA3: TWideStringField
      FieldName = 'A3'
      Origin = 'A3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA4: TWideStringField
      FieldName = 'A4'
      Origin = 'A4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA5: TWideStringField
      FieldName = 'A5'
      Origin = 'A5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA6: TWideStringField
      FieldName = 'A6'
      Origin = 'A6'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA7: TWideStringField
      FieldName = 'A7'
      Origin = 'A7'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA8: TWideStringField
      FieldName = 'A8'
      Origin = 'A8'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA9: TWideStringField
      FieldName = 'A9'
      Origin = 'A9'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA10: TWideStringField
      FieldName = 'A10'
      Origin = 'A10'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA11: TWideStringField
      FieldName = 'A11'
      Origin = 'A11'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA12: TWideStringField
      FieldName = 'A12'
      Origin = 'A12'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA13: TWideStringField
      FieldName = 'A13'
      Origin = 'A13'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA14: TWideStringField
      FieldName = 'A14'
      Origin = 'A14'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA15: TWideStringField
      FieldName = 'A15'
      Origin = 'A15'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA16: TWideStringField
      FieldName = 'A16'
      Origin = 'A16'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA17: TWideStringField
      FieldName = 'A17'
      Origin = 'A17'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA18: TWideStringField
      FieldName = 'A18'
      Origin = 'A18'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA19: TWideStringField
      FieldName = 'A19'
      Origin = 'A19'
      FixedChar = True
      Size = 1
    end
    object tbusuarioA20: TWideStringField
      FieldName = 'A20'
      Origin = 'A20'
      FixedChar = True
      Size = 1
    end
    object tbusuarioB1: TWideStringField
      FieldName = 'B1'
      Origin = 'B1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioB2: TWideStringField
      FieldName = 'B2'
      Origin = 'B2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioB3: TWideStringField
      FieldName = 'B3'
      Origin = 'B3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioB4: TWideStringField
      FieldName = 'B4'
      Origin = 'B4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioB5: TWideStringField
      FieldName = 'B5'
      Origin = 'B5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioC1: TWideStringField
      FieldName = 'C1'
      Origin = 'C1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioC2: TWideStringField
      FieldName = 'C2'
      Origin = 'C2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioC3: TWideStringField
      FieldName = 'C3'
      Origin = 'C3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioC4: TWideStringField
      FieldName = 'C4'
      Origin = 'C4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioC5: TWideStringField
      FieldName = 'C5'
      Origin = 'C5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioD1: TWideStringField
      FieldName = 'D1'
      Origin = 'D1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioD2: TWideStringField
      FieldName = 'D2'
      Origin = 'D2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioE1: TWideStringField
      FieldName = 'E1'
      Origin = 'E1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioE2: TWideStringField
      FieldName = 'E2'
      Origin = 'E2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioE3: TWideStringField
      FieldName = 'E3'
      Origin = 'E3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioE4: TWideStringField
      FieldName = 'E4'
      Origin = 'E4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioE5: TWideStringField
      FieldName = 'E5'
      Origin = 'E5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioF1: TWideStringField
      FieldName = 'F1'
      Origin = 'F1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioF2: TWideStringField
      FieldName = 'F2'
      Origin = 'F2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioF3: TWideStringField
      FieldName = 'F3'
      Origin = 'F3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioG1: TWideStringField
      FieldName = 'G1'
      Origin = 'G1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH1: TWideStringField
      FieldName = 'H1'
      Origin = 'H1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH2: TWideStringField
      FieldName = 'H2'
      Origin = 'H2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH3: TWideStringField
      FieldName = 'H3'
      Origin = 'H3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH4: TWideStringField
      FieldName = 'H4'
      Origin = 'H4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH5: TWideStringField
      FieldName = 'H5'
      Origin = 'H5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH6: TWideStringField
      FieldName = 'H6'
      Origin = 'H6'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH7: TWideStringField
      FieldName = 'H7'
      Origin = 'H7'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH8: TWideStringField
      FieldName = 'H8'
      Origin = 'H8'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH9: TWideStringField
      FieldName = 'H9'
      Origin = 'H9'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH10: TWideStringField
      FieldName = 'H10'
      Origin = 'H10'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH11: TWideStringField
      FieldName = 'H11'
      Origin = 'H11'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH12: TWideStringField
      FieldName = 'H12'
      Origin = 'H12'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH13: TWideStringField
      FieldName = 'H13'
      Origin = 'H13'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH14: TWideStringField
      FieldName = 'H14'
      Origin = 'H14'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH15: TWideStringField
      FieldName = 'H15'
      Origin = 'H15'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH16: TWideStringField
      FieldName = 'H16'
      Origin = 'H16'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH17: TWideStringField
      FieldName = 'H17'
      Origin = 'H17'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH18: TWideStringField
      FieldName = 'H18'
      Origin = 'H18'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH19: TWideStringField
      FieldName = 'H19'
      Origin = 'H19'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH20: TWideStringField
      FieldName = 'H20'
      Origin = 'H20'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH21: TWideStringField
      FieldName = 'H21'
      Origin = 'H21'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH22: TWideStringField
      FieldName = 'H22'
      Origin = 'H22'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH23: TWideStringField
      FieldName = 'H23'
      Origin = 'H23'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH24: TWideStringField
      FieldName = 'H24'
      Origin = 'H24'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH25: TWideStringField
      FieldName = 'H25'
      Origin = 'H25'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH26: TWideStringField
      FieldName = 'H26'
      Origin = 'H26'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH27: TWideStringField
      FieldName = 'H27'
      Origin = 'H27'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH28: TWideStringField
      FieldName = 'H28'
      Origin = 'H28'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH29: TWideStringField
      FieldName = 'H29'
      Origin = 'H29'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH30: TWideStringField
      FieldName = 'H30'
      Origin = 'H30'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH31: TWideStringField
      FieldName = 'H31'
      Origin = 'H31'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH32: TWideStringField
      FieldName = 'H32'
      Origin = 'H32'
      FixedChar = True
      Size = 1
    end
    object tbusuarioH33: TWideStringField
      FieldName = 'H33'
      Origin = 'H33'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI1: TWideStringField
      FieldName = 'I1'
      Origin = 'I1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI2: TWideStringField
      FieldName = 'I2'
      Origin = 'I2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI3: TWideStringField
      FieldName = 'I3'
      Origin = 'I3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI4: TWideStringField
      FieldName = 'I4'
      Origin = 'I4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI5: TWideStringField
      FieldName = 'I5'
      Origin = 'I5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI6: TWideStringField
      FieldName = 'I6'
      Origin = 'I6'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI7: TWideStringField
      FieldName = 'I7'
      Origin = 'I7'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI8: TWideStringField
      FieldName = 'I8'
      Origin = 'I8'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI9: TWideStringField
      FieldName = 'I9'
      Origin = 'I9'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI10: TWideStringField
      FieldName = 'I10'
      Origin = 'I10'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI11: TWideStringField
      FieldName = 'I11'
      Origin = 'I11'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI12: TWideStringField
      FieldName = 'I12'
      Origin = 'I12'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI13: TWideStringField
      FieldName = 'I13'
      Origin = 'I13'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI14: TWideStringField
      FieldName = 'I14'
      Origin = 'I14'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI15: TWideStringField
      FieldName = 'I15'
      Origin = 'I15'
      FixedChar = True
      Size = 1
    end
    object tbusuarioI16: TWideStringField
      FieldName = 'I16'
      Origin = 'I16'
      FixedChar = True
      Size = 1
    end
    object tbusuarioPRECOCUSTO: TWideStringField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
      FixedChar = True
      Size = 1
    end
    object tbusuarioDESCONTOPDV: TWideStringField
      FieldName = 'DESCONTOPDV'
      Origin = 'DESCONTOPDV'
      FixedChar = True
      Size = 1
    end
    object tbusuarioALTERARPVENDA: TWideStringField
      FieldName = 'ALTERARPVENDA'
      Origin = 'ALTERARPVENDA'
      FixedChar = True
      Size = 1
    end
    object tbusuarioDESCONTOBAIXACONTA: TWideStringField
      FieldName = 'DESCONTOBAIXACONTA'
      Origin = 'DESCONTOBAIXACONTA'
      FixedChar = True
      Size = 1
    end
    object tbusuarioPERMITIREXCLUIR: TWideStringField
      FieldName = 'PERMITIREXCLUIR'
      Origin = 'PERMITIREXCLUIR'
      FixedChar = True
      Size = 1
    end
    object tbusuarioSENHA1: TWideStringField
      FieldName = 'SENHA1'
      Origin = 'SENHA1'
      Size = 9
    end
    object tbusuarioP1: TWideStringField
      FieldName = 'P1'
      Origin = 'P1'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP2: TWideStringField
      FieldName = 'P2'
      Origin = 'P2'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP3: TWideStringField
      FieldName = 'P3'
      Origin = 'P3'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP4: TWideStringField
      FieldName = 'P4'
      Origin = 'P4'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP5: TWideStringField
      FieldName = 'P5'
      Origin = 'P5'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP6: TWideStringField
      FieldName = 'P6'
      Origin = 'P6'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP7: TWideStringField
      FieldName = 'P7'
      Origin = 'P7'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP8: TWideStringField
      FieldName = 'P8'
      Origin = 'P8'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP9: TWideStringField
      FieldName = 'P9'
      Origin = 'P9'
      FixedChar = True
      Size = 1
    end
    object tbusuarioP10: TWideStringField
      FieldName = 'P10'
      Origin = 'P10'
      FixedChar = True
      Size = 1
    end
  end
end
