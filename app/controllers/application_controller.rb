class ApplicationController < ActionController::Base
    # Proteção contra ataques CSRF
    protect_from_forgery with: :exception
  
    # Método para redirecionar usuários não autenticados
    before_action :authenticate_usuario!
  
    # Método para definir o usuário atual
    def current_usuario
      @current_usuario ||= Usuario.find_by(id: session[:usuario_id])
    end
    helper_method :current_usuario
  
    private
  
    def authenticate_usuario!
      redirect_to login_path, alert: "Por favor, faça login." unless current_usuario
    end
  end