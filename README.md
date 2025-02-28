# Gestão de Condomínios

![Ruby](https://img.shields.io/badge/Ruby-3.1.2-red)
![Rails](https://img.shields.io/badge/Rails-7.0.4-blue)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14-green)
![Sidekiq](https://img.shields.io/badge/Sidekiq-6.5-yellow)

O **Gestão de Condomínios** é um sistema completo para automatizar a gestão de faturas de condomínios a partir de emails recebidos via Gmail. O sistema processa automaticamente as faturas, organiza os dados e gera relatórios para análise financeira.

---

## Funcionalidades

- **Recebimento de Emails**: Integração com a Gmail API para receber faturas de serviços como água, luz e telefone.
- **Processamento Automático**: Extração de dados das faturas (valor, data de vencimento, tipo de serviço, etc.) e vinculação ao condomínio correto.
- **Armazenamento de Dados**: Uso do PostgreSQL para armazenar dados e Active Storage para gerenciar anexos.
- **Relatórios e Exportação**: Geração de relatórios financeiros e exportação de dados em CSV, XLSX ou PDF.
- **API RESTful**: Integração com sistemas externos de contabilidade.
- **Painel Administrativo**: Interface para gerenciamento manual de condomínios e faturas.
- **Autenticação**: Controle de acesso com Devise.

---

## Tecnologias

- **Ruby on Rails**: Framework principal.
- **PostgreSQL**: Banco de dados.
- **Sidekiq**: Processamento assíncrono de emails.
- **Gmail API**: Integração com o Gmail.
- **Active Storage**: Armazenamento de anexos.
- **Devise**: Autenticação de usuários.
- **RSpec**: Testes automatizados.
- **Bootstrap**: Estilização do front-end.

---

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
   git clone https://github.com/seu-usuario/gestao_condominios.git
   cd gestao_condominios
