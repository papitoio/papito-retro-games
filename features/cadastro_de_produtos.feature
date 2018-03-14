#language: pt

Funcionalidade: Cadastro de produtos
    Para que eu possa ter um estoque na loja de games retrô
    Sendo um lojista
    Posso cadastrar novos produtos

    Cenario: Cadastro de novo produto
        Dado que eu tenho um produto com os seguintes atributos:
            | nome       | River Raid Jogo muito legal                                                  |
            | descricao  | O pai dos Vertical Shooter (jogos de tiro onde o jogador anda verticalmente) |
            | preco      | 59.90                                                                        |
            | quantidade | 20                                                                           |
        Quando faço o cadastro desse produto
        Então vejo a mensagem "Produto cadastrado com sucesso."
        E vejo também este cadastro na lista de produtos

    Cenário: Produto duplicado

        Dado que eu tenho um produto com os seguintes atributos:
            | nome       | Enduro jogo de corrida              |
            | descricao  | Corra incessantemente em uma pista. |
            | preco      | 79.99                               |
            | quantidade | 10                                  |
        Mas este produto já foi cadastrado
        Quando faço o cadastro desse produto
        Então vejo a mensagem "Nome já está em uso"

    Cenario: Nome com menos de 15 caracteres

        Dado que eu tenho um produto com os seguintes atributos:
            | nome       | Pac Man Jogo                                         |
            | descricao  | O mais famoso personagem do mais famoso jogo criado. |
            | preco      | 29.99                                                |
            | quantidade | 10                                                   |
        Quando faço o cadastro desse produto
        Então vejo a mensagem "Nome é muito curto (mínimo: 15 caracteres)"

    Cenario: Preço em branco

        Dado que eu tenho um produto com os seguintes atributos:
            | nome       | Asteroids 2 versão extendida                           |
            | descricao  | Controle uma nave em meio às grandes rochas espaciais. |
            | preco      |                                                        |
            | quantidade | 10                                                     |
        Quando faço o cadastro desse produto
        Então vejo a mensagem "Preco não pode ficar em branco"


    Cenario: Quantidade em branco

        Dado que eu tenho um produto com os seguintes atributos:
            | nome       | Pole Position Jogo de carro                       |
            | descricao  | O game possui jogabilidade e gráficos muito bons. |
            | preco      | 29.99                                             |
            | quantidade |                                                   |
        Quando faço o cadastro desse produto
        Então vejo a mensagem "Quantidade não pode ficar em branco"

