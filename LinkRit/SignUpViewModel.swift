

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
    func login() {
            state.isLoading = true
            userManager.testlogin(
                email: state.email,
                password: state.password
            )
        }
}
