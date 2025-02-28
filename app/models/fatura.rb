class Fatura < ApplicationRecord
    # Validações
    validates :valor, presence: true, numericality: { greater_than: 0 }
    validates :data_vencimento, presence: true
    validates :tipo_servico, presence: true
  
    # Associações
    belongs_to :condominio
  
    # Método para gerar CSV
    def self.to_csv
      attributes = %w[id valor data_vencimento tipo_servico condominio_id]
  
      CSV.generate(headers: true) do |csv|
        csv << attributes
  
        all.each do |fatura|
          csv << attributes.map { |attr| fatura.send(attr) }
        end
      end
    end
  end