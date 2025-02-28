require "rails_helper"

RSpec.describe CondominiosController, type: :controller do
  describe "GET #index" do
    it "retorna uma resposta bem-sucedida" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "retorna uma resposta bem-sucedida" do
      condominio = Condominio.create(nome: "Condomínio A", endereco: "Rua A, 123", codigo_unico: "COND001")
      get :show, params: { id: condominio.id }
      expect(response).to be_successful
    end
  end
end