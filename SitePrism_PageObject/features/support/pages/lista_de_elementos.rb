class MapeandoLista < SitePrism::Page
    set_url '/buscaelementos/table'

    #para mapear varios elementos use 'elements'
    elements :lista, 'tr > td'
end