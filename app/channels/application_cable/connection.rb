module ApplicationCable
    class Connection < ActionCable::Connection::Base
      identified_by :current_user
  
      def connect
        # Autentica o usuário e o identifica na conexão.
        self.current_user = find_verified_user
        logger.add_tags "ActionCable", "User #{current_user.id}"
      end
  
      private
  
      def find_verified_user
        # Verifica se o usuário está autenticado usando o Devise.
        if verified_user = env["warden"].user
          verified_user
        else
          reject_unauthorized_connection
        end
      end
    end
  end