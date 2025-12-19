

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
    func signup(email: String, password: String, name: String) async {
        do {
            state.isLoading = true
            try await dependency.userManager.signup(email: email, password: password, name: name)
            state.viewMode = .mbti
            state.isLoading = false
        } catch {
            state.errorMessage = error.localizedDescription
            print(error.localizedDescription)
            state.isLoading = false
        }
    }
}
