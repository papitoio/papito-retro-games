Dado('que eu tenho um produto com os seguintes atributos:') do |table|
  @produto = table.rows_hash
end

Dado('este produto já foi cadastrado') do
  steps %(
    Quando faço o cadastro desse produto
  )
end

Quando('faço o cadastro desse produto') do
  visit '/produtos/new'

  fill_in 'produto[nome]', with: @produto[:nome]
  fill_in 'produto[descricao]', with: @produto[:descricao]
  fill_in 'produto[preco]', with: @produto[:preco]
  fill_in 'produto[quantidade]', with: @produto[:quantidade]

  click_on 'Criar Produto'
end

Então('vejo a mensagem {string}') do |message|
  notice = find('#notice').text
  expect(notice).to eql message
end

Então('vejo também este cadastro na lista de produtos') do
  expect(page).to have_content @produto[:nome]
  expect(page).to have_content @produto[:descricao]
  expect(page).to have_content @produto[:preco]
  expect(page).to have_content @produto[:quantidade]
end
