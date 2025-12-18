import Observation

@Observable
class HomeViewModel {
    struct State {
        var searchText: String = ""
        let events = ["NEXUS","watnow","ChatGPT","Google Assistant","Apple Siri"]

        var filteredEvents: [String] {
            if searchText.isEmpty {
                return events
            } else {
                return events.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
    }
    var state : State
    init(state: State = .init()) {
        self.state = state
    }
}
