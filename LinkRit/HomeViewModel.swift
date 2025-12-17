import Observation
import Foundation

@Observable
class HomeViewModel {
    struct State {

    }
    var state : State
    init(state: State = .init()) {
        self.state = state
    }
}
