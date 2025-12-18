

import Foundation
import JWTDecode
@Observable
class SignUpViewModel {
    struct State {
        var email = ""
        var password = ""
        var isLoading = false
        var errorMessage: String?
        var name = ""
    }
    var state : State
    var userManager = UserManager()
    init(
        state: State = .init()
    ) {
        self.state = state
    }
    func signup() {
            state.isLoading = true
        userManager.signup(email: state.email,password: state.password, name: state.name)
        }
}
