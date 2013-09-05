package com.chcitohned.domain

abstract class LoginController {

    def beforeInterceptor = [ action:this.&checkAuthenticated, except:['handleLogin', 'login', 'handleRegistration', 'register'] ]
    
    private checkAuthenticated() {
        if (!session.user) {
            def linkString = createLink(url: "${resource(dir:"user", file:"login")}?originalUrl=${request.forwardURI - request.contextPath}" )
            redirect(url:"${linkString - request.contextPath}")
            return false
        }        
    }
}
