Dado("que acesse a pagina de unidades") do
  @home.button_unidade.click
end

Quando("seleciono algumas opcões de facilidade") do 
  @unidade.selecionar_facilidade.click
  @unidade.selecionar_facilidades_tela_unidade
  @unidade.ver_detalhes.first.click
end

Então("devo ver a unidade {string}") do |string|
  expect(page).to have_content(string, wait: 30)
end