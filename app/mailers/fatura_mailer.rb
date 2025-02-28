class FaturaMailer < ApplicationMailer
    # Envia uma notificação sobre uma nova fatura
    def notificar_fatura(usuario, fatura)
      @usuario = usuario
      @fatura = fatura
      mail(to: @usuario.email, subject: "Nova fatura disponível")
    end
  end