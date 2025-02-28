require "rails_helper"

RSpec.describe Servico, type: :model do
  it "é válido com tipo" do
    servico = Servico.new(tipo: "Água")
    expect(servico).to be_valid
  end

  it "é inválido sem tipo" do
    servico = Servico.new(tipo: nil)
    expect(servico).not_to be_valid
  end

  it "tipo deve ser único" do
    Servico.create(tipo: "Água")
    servico = Servico.new(tipo: "Água")
    expect(servico).not_to be_valid
  end
end