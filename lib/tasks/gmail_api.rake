namespace :gmail do
    desc "Processa emails recebidos e extrai dados das faturas"
    task processar_emails: :environment do
      require "gmail_api/client"
  
      client = GmailApi::Client.new
      emails = client.fetch_emails
  
      emails.each do |email|
        ProcessarEmailJob.perform_later(email.id)
      end
  
      puts "Processamento de emails iniciado."
    end
  end