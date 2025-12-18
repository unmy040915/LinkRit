import Observation
import SwiftUI
import Auth0

@Observable
class LoginViewModel {
    struct Dependency {
        let userManager: UserManager
    }
    
    struct State {
        var email = ""
        var password = ""
        var isLoading = false
        var errorMessage: String?
        @Binding var viewMode: ViewDestination
    }
    
    var state: State
    let dependency: Dependency
    
    init(state: State, dependency: Dependency) {
        self.state = state
        self.dependency = dependency
    }
}

extension LoginViewModel {
    func login(email: String, password: String) {
        state.isLoading = true
        dependency.userManager.login(
            email: email,
            password: password
        )
    }
}
