package com.chcitohned.domain

class Subscription {

    User seller
    User buyer
    Date dateCreated = new Date()
    
    static hasMany = [items:Item]
    
    static constraints = {
        buyer(nullable:false)
        seller(nullable:false)
        dateCreated(nullable:false)
        items(minSize:1)       
    }
    
    String toString() {
        def itemsString = items.join(',')
        return "${seller.login} sells to ${buyer.login} items : ${itemsString}"
    }
}
