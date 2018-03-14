#language: pt

Funcionalidade: Remover produto
    Para que eu possa remover um produto cadastrado erroneamente
    Sendo um lojista
    Posso apagar um determinado registro

    @delete
    Cenario: Remover um produto cadastrado

        Dado que eu desejo apagar o produto "Donkey Kong Jogo muito legal"
        Quando faço o exclusão desse produto
        E confirmo a exclusão
        Então vejo a mensagem "Produto removido com sucesso."