package com.chcitohned.domain



class Item {

    String name
    String description
    Double servedDistance

    Category category
    Subscription order
    Geopoint location
    
    static constraints = {
        name(blank:false, size: 1..15)
        description(blank:true, size: 0..50)
        category(nullable:false)
        order(nullable:true)
        servedDistance(nullable: true)
        location(nullable:true)
    }
    
    static optionals = ['order']
    static belongsTo = [ category: Category, order: Subscription ]

    
    String toString() {
        return name
    }
}
