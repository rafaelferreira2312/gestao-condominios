class FaturasController < ApplicationController
    before_action :set_fatura, only: [:show, :edit, :update, :destroy]
  
    # Lista todas as faturas
    def index
      @faturas = Fatura.all
    end
  
    # Exibe os detalhes de uma fatura
    def show
    end
  
    # Exibe o formulário para criar uma nova fatura
    def new
      @fatura = Fatura.new
    end
  
    # Cria uma nova fatura
    def create
      @fatura = Fatura.new(fatura_params)
      if @fatura.save
        redirect_to @fatura, notice: "Fatura criada com sucesso."
      else
        render :new
      end
    end
  
    # Exibe o formulário para editar uma fatura
    def edit
    end
  
    # Atualiza uma fatura existente
    def update
      if @fatura.update(fatura_params)
        redirect_to @fatura, notice: "Fatura atualizada com sucesso."
      else
        render :edit
      end
    end
  
    # Exclui uma fatura
    def destroy
      @fatura.destroy
      redirect_to faturas_url, notice: "Fatura excluída com sucesso."
    end
  
    private
  
    # Define a fatura com base no ID
    def set_fatura
      @fatura = Fatura.find(params[:id])
    end
  
    # Permite apenas parâmetros seguros
    def fatura_params
      params.require(:fatura).permit(:valor, :data_vencimento, :tipo_servico, :condominio_id)
    end
  end