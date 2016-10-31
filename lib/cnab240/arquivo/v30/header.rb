module Cnab240::V30::Arquivo
  class Header < BinData::Record
    include Cnab240::DefaultMixin

    lstring :controle_banco, length: 3, pad_byte: '0'
    lstring :controle_lote, length: 4, pad_byte: '0'
    lstring :controle_registro, length: 1, initial_value: '0', pad_byte: '0'

    string :cnab_g004_1, length: 9, initial_value: ' ', pad_byte: ' '

    lstring :empresa_tipo, length: 1, pad_byte: '0'
    lstring :empresa_numero, length: 14, pad_byte: '0'
    string :empresa_convenio, length: 9, pad_byte: ' '

    string :brancos_1, length: 11, pad_byte: ' '

    lstring :empresa_agencia_codigo, length: 5, pad_byte: '0'
    string :empresa_agencia_dv, length: 1, pad_byte: ' '
    lstring :empresa_conta_numero, length: 12, pad_byte: '0'
    string :empresa_conta_dv, length: 1, pad_byte: ' '
    string :empresa_agencia_conta_dv, length: 1, pad_byte: ' '
    string :empresa_nome, length: 30, pad_byte: ' '

    string :banco_nome, length: 30, pad_byte: ' '

    string :cnab_g004_2, length: 10, pad_byte: ' '

    lstring :arquivo_codigo, length: 1, pad_byte: '0'
    lstring :arquivo_data_geracao, length: 8, pad_byte: '0'
    lstring :arquivo_hora_geracao, length: 6, pad_byte: '0'
    lstring :arquivo_sequencia, length: 6, pad_byte: '0'
    lstring :arquivo_layout, length: 3, initial_value: '030'
    lstring :arquivo_densidade, length: 5, pad_byte: '0'

    string :reservado_banco, length: 20, pad_byte: ' '

    string :reservado_empresa, length: 20, pad_byte: ' '

    string :cnab_g004_3, length: 19, pad_byte: ' '

    string :codigo_retorno, length: 2, pad_byte: ' '
    string :codigo_ocorrencias_retorno, length: 8, pad_byte: ' '
  end
end
