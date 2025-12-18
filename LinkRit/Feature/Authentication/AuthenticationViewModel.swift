
import SwiftUI

@Observable
class AuthenticationViewModel {
    struct Dependency {
        let userManager: UserManager
    }
    
    struct State {
        var viewMode: ViewDestination = .login
    }

    var state: State
    let dependency: Dependency
    
    init(state: State = .init(), dependency: Dependency) {
        self.state = state
        self.dependency = dependency
    }
}
