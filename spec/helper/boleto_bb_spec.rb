require 'spec_helper'

include Cnab240

RSpec.describe "Cnab240 Retorno BB V30" do
  it 'deve carregar arquivo de retorno do BANCO DO BRASIL' do
    arquivo = Cnab240::Arquivo::Arquivo.load_from_file('./spec/fixtures/retorno/IEDCBR.ret')[0]

    expect(arquivo.lotes.length).to be 1

    ## Header Arquivo
    # Controle
    expect(arquivo.header.controle_banco).to eq "001"
    expect(arquivo.header.controle_lote).to eq "0000"
    expect(arquivo.header.controle_registro).to eq "0"
    # Arquivo
    expect(arquivo.header.arquivo_layout).to eq "030"

    arquivo.lotes.each do |lote|
      ## Header Lote
      # Controle
      expect(lote.header.controle_banco).to eq "001"
      expect(lote.header.controle_lote).to eq "0001"
      expect(lote.header.controle_registro).to eq "1"
      # Servico
      expect(lote.header.servico_operacao).to eq "T"
      expect(lote.header.servico_tipo).to eq "01"
      expect(lote.header.servico_forma).to eq "00"
      expect(lote.header.servico_layout).to eq "020"
      # Empresa
      expect(lote.header.empresa_nome).to eq "EMPRESA FANTASIA              "
    end
  end
end
