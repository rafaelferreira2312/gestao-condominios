class CondominiosController < ApplicationController
    before_action :set_condominio, only: [:show, :edit, :update, :destroy]
  
    # Lista todos os condomínios
    def index
      @condominios = Condominio.all
    end
  
    # Exibe os detalhes de um condomínio
    def show
    end
  
    # Exibe o formulário para criar um novo condomínio
    def new
      @condominio = Condominio.new
    end
  
    # Cria um novo condomínio
    def create
      @condominio = Condominio.new(condominio_params)
      if @condominio.save
        redirect_to @condominio, notice: "Condomínio criado com sucesso."
      else
        render :new
      end
    end
  
    # Exibe o formulário para editar um condomínio
    def edit
    end
  
    # Atualiza um condomínio existente
    def update
      if @condominio.update(condominio_params)
        redirect_to @condominio, notice: "Condomínio atualizado com sucesso."
      else
        render :edit
      end
    end
  
    # Exclui um condomínio
    def destroy
      @condominio.destroy
      redirect_to condominios_url, notice: "Condomínio excluído com sucesso."
    end
  
    private
  
    # Define o condomínio com base no ID
    def set_condominio
      @condominio = Condominio.find(params[:id])
    end
  
    # Permite apenas parâmetros seguros
    def condominio_params
      params.require(:condominio).permit(:nome, :endereco, :codigo_unico)
    end
  end