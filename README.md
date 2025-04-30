# 👕 New Again

**New Again** é um marketplace de roupas usadas com foco em **sustentabilidade** e **comunidade local**. A plataforma conecta pessoas interessadas em vender, comprar, doar ou trocar roupas em bom estado, incentivando o consumo consciente e a economia circular.

---

## ✨ Funcionalidades

- 🛍️ Cadastro de peças de roupas com imagens, descrição e categoria
- 👤 Criação de perfis de usuário
- 🔍 Busca e filtragem de itens por categoria
- 💬 Avaliações e interações entre usuários
- 📦 Sistema de transações simples e intuitivo

---

## 🧰 Tecnologias Utilizadas

- **Ruby on Rails** (backend)
- **PostgreSQL** (banco de dados)
- **Bootstrap 5** + **CSS** (frontend responsivo)
- **Stimulus.js** (interatividade no frontend)
- **Devise** (autenticação)
- **Heroku** (deploy)

---

## 🚀 Acesse o App

- [🔗 Deploy no Heroku](https://new-again-91a2bcba0f4f.herokuapp.com)

---

## 🛠️ Como rodar localmente

```bash
# Clone o repositório
git clone https://github.com/Eduardo-juricic/New-Again-Marketplace.git
cd New-Again-Marketplace

# Instale as dependências
bundle install
yarn install

# Crie e popule o banco de dados
rails db:create db:migrate db:seed

# Rode o servidor
rails server

