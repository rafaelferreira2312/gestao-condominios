class Servico < ApplicationRecord
    # Validações
    validates :tipo, presence: true, uniqueness: true
  
    # Associações
    has_many :faturas, dependent: :destroy
  end