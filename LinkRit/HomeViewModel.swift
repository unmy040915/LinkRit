import Observation

@Observable
class HomeViewModel {

    struct State {
        var searchText: String = ""
    }

    // ← ViewModel 内に状態を保持
    var state = State()

    let events = ["NEXUS","watnow","ChatGPT","Google Assistant","Apple Siri"]

    var filteredEvents: [String] {
        if state.searchText.isEmpty {
            return events
        } else {
            return events.filter { $0.localizedCaseInsensitiveContains(state.searchText) }
        }
    }
}
