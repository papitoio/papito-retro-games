Dado('que eu desejo apagar o produto {string}') do |produto|
  @produto = {
    nome: produto,
    descricao: 'Produto muito bom para ser removido.',
    preco: 19.90,
    quantidade: 1
  }

  steps %(
    Quando faço o cadastro desse produto
  )
end

Quando('faço o exclusão desse produto') do
  visit '/'
  produto = find('tr', text: @produto[:nome])
  produto.find('#delete').click
end

Quando('confirmo a exclusão') do
  page.driver.browser.switch_to.alert.accept
end
