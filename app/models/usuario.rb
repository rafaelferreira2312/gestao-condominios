class Usuario < ApplicationRecord
    # Configuração do Devise
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  
    # Validações
    validates :nome, presence: true
    validates :email, presence: true, uniqueness: true
  
    # Associações
    has_many :faturas, dependent: :destroy
  end