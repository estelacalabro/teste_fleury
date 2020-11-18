Dado("que acesse a pagina de unidades") do
  @unidade.link_unidade.click
end

Quando("seleciono algumas opcões de facilidade") do 
  sleep 5
  @unidade.filtro_facilidade.click
  @unidade.selecionar_facilities
  @unidade.ver_detalhes.click
end

Então("devo ver a unidade {string}") do |string|
  expect(page).to have_content(string, wait: 30)
end