module Api
    module V1
      class FaturasController < ApplicationController
        # Lista todas as faturas
        def index
          @faturas = Fatura.all
          render json: @faturas
        end
  
        # Exibe os detalhes de uma fatura
        def show
          @fatura = Fatura.find(params[:id])
          render json: @fatura
        end
      end
    end
  end