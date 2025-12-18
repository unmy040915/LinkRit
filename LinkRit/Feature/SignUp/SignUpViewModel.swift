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
    
    var state: State
    let dependency: Dependency
    
    init(state: State, dependency: Dependency) {
        self.state = state
        self.dependency = dependency
    }
}
extension SignUpViewModel {
    func signup(email: String, password: String, name: String) {
        state.isLoading = true
        dependency.userManager.signup(email: email, password: password, name: name)
        state.viewMode = .home
    }
}
