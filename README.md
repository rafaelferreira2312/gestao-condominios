# Gestão de Condomínios

![Ruby](https://img.shields.io/badge/Ruby-3.1.2-red)
![Rails](https://img.shields.io/badge/Rails-7.0.4-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14-green)
![Sidekiq](https://img.shields.io/badge/Sidekiq-6.5-yellow)

O **Gestão de Condomínios** é um sistema completo para automatizar a gestão de faturas de condomínios a partir de emails recebidos via Gmail. O sistema processa automaticamente as faturas, organiza os dados e gera relatórios para análise financeira.

## Funcionalidades

- **Recebimento de Emails**: Integração com a Gmail API para receber faturas de serviços como água, luz e telefone.
- **Processamento Automático**: Extração de dados das faturas (valor, data de vencimento, tipo de serviço, etc.) e vinculação ao condomínio correto.
- **Armazenamento de Dados**: Uso do PostgreSQL para armazenar dados e Active Storage para gerenciar anexos.
- **Relatórios e Exportação**: Geração de relatórios financeiros e exportação de dados em CSV, XLSX ou PDF.
- **API RESTful**: Integração com sistemas externos de contabilidade.
- **Painel Administrativo**: Interface para gerenciamento manual de condomínios e faturas.
- **Autenticação**: Controle de acesso com Devise.

## Tecnologias

- **Ruby on Rails**: Framework principal.
- **PostgreSQL**: Banco de dados.
- **Sidekiq**: Processamento assíncrono de emails.
- **Gmail API**: Integração com o Gmail.
- **Active Storage**: Armazenamento de anexos.
- **Devise**: Autenticação de usuários.
- **RSpec**: Testes automatizados.
- **Bootstrap**: Estilização do front-end.

## Como Executar o Projeto

### Pré-requisitos

- Ruby 3.1.2
- Rails 7.0.4
- PostgreSQL 14
- Sidekiq
- Conta do Gmail com API habilitada

### Passos para Configuração

1. Clone o repositório:
```bash
git clone https://github.com/rafaelferreira2312/gestao-condominios
cd gestao-condominios
```

2. Instale as dependências:
```bash
bundle install
```

3. Configure o banco de dados:
```bash
rails db:create
rails db:migrate
```

4. Configure as credenciais da Gmail API:

- Crie um arquivo config/credentials.yml.enc com as credenciais necessárias.

- Use o comando rails credentials:edit para editar o arquivo.

6. Execute o Sidekiq:
```bash
bundle exec sidekiq
```

7. Inicie o servidor Rails:
```bash
rails 
```

8. Acesse o sistema no navegador:
```bash
http://localhost:3000
```

## Testes

### Para executar os testes automatizados:
```bash
bundle exec rspec
```

## Contribuição

### Contribuições são bem-vindas! Siga os passos abaixo:

1. Faça um fork do projeto.

2. Crie uma branch para sua feature (git checkout -b feature/nova-feature).

3. Commit suas mudanças (git commit -m 'Adiciona nova feature').

4. Push para a branch (git push origin feature/nova-feature).

5. Abra um Pull Request.

## Licença

### Este projeto está licenciado sob a MIT License.

### Explicação da Estrutura

1. **app/**: Contém a lógica principal do aplicativo (modelos, controladores, views, jobs, etc.).
2. **config/**: Configurações do projeto, como rotas, banco de dados e inicializadores.
3. **db/**: Migrações e esquema do banco de dados.
4. **lib/**: Códigos personalizados, como tarefas Rake e integrações com APIs.
5. **spec/**: Testes automatizados com RSpec.
6. **README.md**: Documentação do projeto, com instruções de uso e configuração.

- Essa estrutura e README garantem que o projeto seja bem organizado e fácil de entender para outros desenvolvedores.