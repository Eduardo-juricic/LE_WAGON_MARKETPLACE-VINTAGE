# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

user1 = User.create!(username: "Alice", email: "alice@example.com", password: "senha123")
user2 = User.create!(username: "Bruno", email: "bruno@example.com", password: "senha123")
user3 = User.create!(username: "Carla", email: "carla@example.com", password: "senha123")

products = [
  { name: "Vestido Floral", price: 129.90, description: "Vestido longo com estampa floral, ideal para dias quentes.", category: "Feminino", size: "P", seller: user1 },
  { name: "Blusa de Seda", price: 99.90, description: "Blusa elegante de seda, perfeita para ocasiões especiais.", category: "Feminino", size: "M", seller: user1 },
  { name: "Calça Jeans Skinny", price: 149.90, description: "Calça jeans justa ao corpo, confortável e estilosa.", category: "Feminino", size: "38", seller: user1 },

  { name: "Camiseta Polo", price: 89.90, description: "Camiseta polo de algodão, casual e confortável.", category: "Masculino", size: "G", seller: user2 },
  { name: "Jaqueta Jeans", price: 199.90, description: "Jaqueta jeans resistente, ideal para o inverno.", category: "Masculino", size: "M", seller: user2 },
  { name: "Bermuda de Sarja", price: 79.90, description: "Bermuda casual de sarja, ideal para dias quentes.", category: "Masculino", size: "42", seller: user2 },

  { name: "Macacão de Algodão", price: 59.90, description: "Macacão infantil super confortável, feito 100% de algodão.", category: "Infantil", size: "2 anos", seller: user3 },
  { name: "Conjunto Moletom", price: 109.90, description: "Conjunto de moletom quentinho para o inverno.", category: "Infantil", size: "4 anos", seller: user3 },
  { name: "Vestido Infantil Estampado", price: 89.90, description: "Vestido colorido e alegre, ideal para festas.", category: "Infantil", size: "6 anos", seller: user3 }
]
