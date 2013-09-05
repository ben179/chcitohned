package com.chcitohned.tags

class ChciToHnedTagLib {
   
    def loginLink = {
        attrs, body ->
       
        out << "<br/><p align='right'><b>User: </b>"
        if (attrs.user) {
            out << "<i>${attrs.user.login} </i>"
            def linkString = link(controller:'user', action:'handleLogout') { '<b>[Log Out]</b>' }
            out << linkString
        } else {
            out << "<i>(anonymous) </i>" 
            def linkString = link(url: "${resource(dir:"user", file:"login")}?originalUrl=${request.forwardURI - request.contextPath}" ) { '<b>[Log In]</b>'}
            out << linkString
        }
        out << "&nbsp;&nbsp;&nbsp;</p><br/>"
    }
}
