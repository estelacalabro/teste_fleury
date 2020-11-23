module UnidadeModule
#Este metodo seleciona algumas facilidades dentro da tela de unidades
  def selecionar_facilidades_tela_unidade
    find('label[for="_Bicicletário e vaga verde"]').click
    find('label[for="_Atendimento aos domingos"]').click
  end
end