import com.foodible.auth.Authority
import com.foodible.user.Role
import com.foodible.user.User
import grails.util.Environment

class BootStrap {

    def userService

    def init = { servletContext ->
        if (Environment.current == Environment.DEVELOPMENT){
            Authority.ALLOWED_AUTHORITIES.each {String authority ->
                if (!Role.findByAuthority(authority)){
                    new Role(authority: authority).save()
                }
            }

            if (!User.findByEmail('test@example.com')){
                userService.createUser('test@example.com', 'test', Authority.ADMIN)
            }
        }
    }
    def destroy = {
    }
}
