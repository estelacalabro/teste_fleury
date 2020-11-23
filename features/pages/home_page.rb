class HomeScreen < SitePrism::Page

    include UnidadeModule

   set_url '/'
    element :button_unidade, '#button-title-desktop-header', text: 'Unidades'
end