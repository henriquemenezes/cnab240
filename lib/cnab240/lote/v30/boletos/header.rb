module Cnab240
  class Lote
    module V30
      module Boletos
        class Header < BinData::Record
          include Cnab240::DefaultMixin

          lstring :controle_banco, length: 3, pad_byte: '0'
          lstring :controle_lote, length: 4, pad_byte: '0'
          lstring :controle_registro, length: 1, initial_value: '1', pad_byte: '0'

          string :servico_operacao, length: 1, initial_value: 'R', pad_byte: ' '
          lstring :servico_tipo, length: 2, pad_byte: '0', initial_value: '01'
          lstring :servico_forma, length: 2, pad_byte: ' '
          lstring :servico_layout, length: 3, initial_value: '020', pad_byte: '0'

          string :cnab_g004_1, length: 1, pad_byte: ' '

          lstring :empresa_tipo, length: 1, pad_byte: '0' #'1'= CPF, '2'= CGC/CNPJ
          lstring :empresa_numero, length: 15, pad_byte: '0'

          # Codigo Convenio (20)
          # Convenio Banco do Brasil
          lstring :empresa_convenio, length: 9, pad_byte: '0'
          lstring :cobranca_cedente, length: 4, initial_value: '0014', pad_byte: '0'
          lstring :carteira_cobranca, length: 2, initial_value: '17', pad_byte: '0'
          lstring :variacao_carteira, length: 3, initial_value: '019', pad_byte: '0'
          lstring :remessa_teste, length: 2, pad_byte: ' ' # 'TS' para Remessa de Testes

          lstring :empresa_agencia_codigo, length: 5, pad_byte: '0'
          string :empresa_agencia_dv, length: 1, pad_byte: ' '
          lstring :empresa_conta_numero, length: 12, pad_byte: '0'
          string :empresa_conta_dv, length: 1, pad_byte: ' '
          string :empresa_agencia_conta_dv, length: 1, pad_byte: ' '
          string :empresa_nome, length: 30, pad_byte: ' '


          string :informacao_1, length: 40, pad_byte: ' '
          string :informacao_2, length: 40, pad_byte: ' '

          lstring :controle_cobranca, length: 8, pad_byte: '0'
          lstring :data_geracao, length: 8, pad_byte: '0'
          lstring :data_credito, length: 8, pad_byte: '0'

          string :cnab_g004_2, length: 33, pad_byte: ' '

          protected

          def auto_fill
          end
        end
      end
    end
  end
end
