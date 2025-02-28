require "rails_helper"

RSpec.describe ProcessarEmailJob, type: :job do
  it "processa um email com sucesso" do
    email = Email.create(corpo: "Fatura de água: R$ 150,00, vencimento: 30/10/2023")
    expect {
      ProcessarEmailJob.perform_now(email.id)
    }.to change(Fatura, :count).by(1)
  end
end