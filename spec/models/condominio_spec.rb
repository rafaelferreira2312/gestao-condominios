require "rails_helper"

RSpec.describe Condominio, type: :model do
  it "é válido com atributos completos" do
    condominio = Condominio.new(
      nome: "Condomínio A",
      endereco: "Rua A, 123",
      codigo_unico: "COND001"
    )
    expect(condominio).to be_valid
  end

  it "é inválido sem nome" do
    condominio = Condominio.new(nome: nil)
    expect(condominio).not_to be_valid
  end

  it "é inválido sem endereço" do
    condominio = Condominio.new(endereco: nil)
    expect(condominio).not_to be_valid
  end

  it "é inválido sem código único" do
    condominio = Condominio.new(codigo_unico: nil)
    expect(condominio).not_to be_valid
  end

  it "código único deve ser único" do
    Condominio.create(nome: "Condomínio A", endereco: "Rua A, 123", codigo_unico: "COND001")
    condominio = Condominio.new(nome: "Condomínio B", endereco: "Rua B, 456", codigo_unico: "COND001")
    expect(condominio).not_to be_valid
  end
end