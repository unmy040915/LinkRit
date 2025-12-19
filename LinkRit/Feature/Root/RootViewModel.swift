import Foundation

@Observable
class RootViewModel{
    struct Dependency{
        let userManager: UserManager
    }
    struct State {
        var ViewMode: ViewDestination = .login
    }
    var state : State
    let dependency: Dependency
    init(state: State = .init(), dependency: Dependency) {
        self.state = state
        self.dependency = dependency
    }
}

