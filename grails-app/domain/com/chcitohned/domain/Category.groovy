package com.chcitohned.domain

class Category {

    String name
           
    static constraints = {
        name(blank:false)
    }
    
    static hasMany = [items:Item]
        
    String toString() {
        return "Category ${name}"
    }
}
