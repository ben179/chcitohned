package com.chcitohned.domain

class SearchController {

    def index() { }
    
    def findItems = {   
        def itemString = params.value.trim()
        def foundItems = findItems(itemString)
        render(template:'foundItems', model: [foundItems : foundItems])
    }
    
    def findByLocation = {
    }
    
    def findItemsByLocation = {      
        def itemString = params.value.trim()
        def foundItems = findItems(itemString)
        // TBD measure item distance form current user
        def userPosition = session['position']               
        render(template:'foundItemsByLocation', model: [foundItems : foundItems])
    }
    
    private Set findItems(String name) {
        Set foundItems = new HashSet()
        if (name) {
            foundItems = Item.findAllByNameIlike("%${name}%")
            foundItems += Item.findAllByDescriptionIlike("%${name}%")
            
            def categories = Category.findAllByNameIlike("%${name}%")
            categories.each { category -> foundItems += category.items }
            
            foundItems.unique()
        }
        
        return foundItems
    }
}
