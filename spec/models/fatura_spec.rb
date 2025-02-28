require "rails_helper"

RSpec.describe Fatura, type: :model do
  it "é válida com atributos completos" do
    condominio = Condominio.create(nome: "Condomínio A", endereco: "Rua A, 123", codigo_unico: "COND001")
    fatura = Fatura.new(
      valor: 150.00,
      data_vencimento: Date.today + 30,
      tipo_servico: "Água",
      condominio: condominio
    )
    expect(fatura).to be_valid
  end

  it "é inválida sem valor" do
    fatura = Fatura.new(valor: nil)
    expect(fatura).not_to be_valid
  end

  it "é inválida sem data de vencimento" do
    fatura = Fatura.new(data_vencimento: nil)
    expect(fatura).not_to be_valid
  end

  it "é inválida sem tipo de serviço" do
    fatura = Fatura.new(tipo_servico: nil)
    expect(fatura).not_to be_valid
  end

  it "é inválida sem condomínio" do
    fatura = Fatura.new(condominio: nil)
    expect(fatura).not_to be_valid
  end
end