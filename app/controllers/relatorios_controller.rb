class RelatoriosController < ApplicationController
    # Exibe o formulário para gerar relatórios
    def index
    end
  
    # Gera um relatório de faturas
    def gerar_relatorio
      @faturas = Fatura.where(data_vencimento: params[:data_inicio]..params[:data_fim])
      respond_to do |format|
        format.html
        format.csv { send_data @faturas.to_csv, filename: "faturas-#{Date.today}.csv" }
        format.pdf do
          render pdf: "relatorio-faturas", template: "relatorios/relatorio", formats: [:html]
        end
      end
    end
  end