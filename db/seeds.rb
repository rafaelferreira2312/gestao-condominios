# Cria alguns condomínios
condominio1 = Condominio.create(nome: "Condomínio A", endereco: "Rua A, 123", codigo_unico: "COND001")
condominio2 = Condominio.create(nome: "Condomínio B", endereco: "Rua B, 456", codigo_unico: "COND002")

# Cria alguns serviços
servico1 = Servico.create(tipo: "Água")
servico2 = Servico.create(tipo: "Luz")
servico3 = Servico.create(tipo: "Telefone")

# Cria algumas faturas
Fatura.create(valor: 150.00, data_vencimento: Date.today + 30, tipo_servico: "Água", condominio: condominio1)
Fatura.create(valor: 200.00, data_vencimento: Date.today + 30, tipo_servico: "Luz", condominio: condominio2)
Fatura.create(valor: 100.00, data_vencimento: Date.today + 30, tipo_servico: "Telefone", condominio: condominio1)

puts "Dados iniciais criados com sucesso!"