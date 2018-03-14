class Produto < ApplicationRecord
    validates :nome, length: { minimum: 15 }, uniqueness: true
    validates :descricao, length: { minimum: 10, maximum: 250 }
    validates :quantidade, presence: true
    validates :preco, presence: true
end
