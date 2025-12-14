

import Foundation
import JWTDecode
@Observable
class SignUpViewModel {
    struct State {
        var email = ""
        var password = ""
        var isLoading = false
        var errorMessage: String?
    }
    var state : State
    init(state: State = .init()) {
        self.state = state
    }
}
