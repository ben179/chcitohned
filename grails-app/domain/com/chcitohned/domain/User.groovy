package com.chcitohned.domain


class User {
    
    String login
    String password
    String firstName
    String lastName
    String email
    Date dateCreated = new Date()
    
   
    static constraints = {
        login(unique:true,length:5..15)
        password(length:6..12, blank:false)
        email(email:true, blank:false, unique:true)
        firstName(blank:false)
        lastName(blank:false)
    
        soldSubscriptions(nullable:true, minSize:0)
        boughtSubscriptions(nullable:true, minSize:0)
    }
 
    static hasMany = [soldSubscriptions: Subscription, boughtSubscriptions: Subscription]    
    static mappedBy = [boughtSubscriptions:"buyer", soldSubscriptions: "seller"]
   
    String toString() { return "${firstName} ${lastName} (${login})"}
}
