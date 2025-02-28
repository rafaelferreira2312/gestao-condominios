class Condominio < ApplicationRecord
    # Validações
    validates :nome, presence: true
    validates :endereco, presence: true
    validates :codigo_unico, presence: true, uniqueness: true
  
    # Associações
    has_many :faturas, dependent: :destroy
  end