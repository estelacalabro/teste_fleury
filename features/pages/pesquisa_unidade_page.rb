class UnidadeScreen < SitePrism::Page
    include UnidadeModule

    set_url '/'
     element :selecionar_facilidade, '#checkoox-select-facilities'
     elements :ver_detalhes, '.typographycomponentstyle__H3-sc-1oox73n-3.caOpMn', text: 'Shopping Anália Franco'
end