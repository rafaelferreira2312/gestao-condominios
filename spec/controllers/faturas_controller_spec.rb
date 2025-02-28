require "rails_helper"

RSpec.describe Api::V1::FaturasController, type: :controller do
  let(:condominio) { Condominio.create(nome: "Condomínio A", endereco: "Rua A, 123", codigo_unico: "COND001") }
  let(:fatura) { Fatura.create(valor: 150.00, data_vencimento: Date.today + 30, tipo_servico: "Água", condominio: condominio) }

  describe "GET #index" do
    it "retorna uma resposta bem-sucedida" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "retorna uma resposta bem-sucedida" do
      get :show, params: { id: fatura.id }
      expect(response).to be_successful
    end
  end
end