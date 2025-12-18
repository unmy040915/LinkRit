

import Foundation
import JWTDecode
import SwiftUI
@Observable
class SignUpViewModel {
    struct Dependency {
            let userManager: UserManager
        }
    struct State {
        var email = ""
        var password = ""
        var isLoading = false
        var errorMessage: String?
        var name = ""
        @Binding var viewMode: ViewDestination
    }
    var state : State
    var userManager = UserManager()
    let dependency: Dependency
    init(state: State, dependency: Dependency) {
            self.state = state
            self.dependency = dependency
        }
}

extension SignUpViewModel {
    func signup() {
        state.isLoading = true
        dependency.userManager.signup(email: state.email,password: state.password, name: state.name)
    }
}
