class HomeScreen < SitePrism::Page

    include UnidadeModule

   #  url definido no arquivo hooks.rb
   #  set_url usada caso queira que abra direto em uma pagina expecifica do site. por exemplo '/unidades
   set_url '/'
    element :link_unidade, '#button-title-desktop-header', text: 'Unidades'
end