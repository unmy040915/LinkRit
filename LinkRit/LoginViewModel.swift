import Observation
import Auth0
@Observable
class LoginViewModel {
    
    struct State {
        var email = ""
        var password = ""
        var isLoading = false
        var errorMessage: String?
    }
    var state : State
    var userManager = UserManager()
    init(
        state: State = .init()
    ) {
        self.state = state
    }
    func login() {
            state.isLoading = true
            userManager.testlogin(
                email: state.email,
                password: state.password
            )
        }
    
}
