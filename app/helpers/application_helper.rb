module ApplicationHelper
    # Método para exibir mensagens de alerta
    def alert_class(flash_type)
      case flash_type.to_sym
      when :notice then "alert-success"
      when :alert  then "alert-danger"
      else "alert-info"
      end
    end
  
    # Método para formatar datas
    def formatar_data(data)
      data.strftime("%d/%m/%Y") if data.present?
    end
  
    # Método para formatar valores monetários
    def formatar_moeda(valor)
      number_to_currency(valor, unit: "R$ ", separator: ",", delimiter: ".")
    end
  end