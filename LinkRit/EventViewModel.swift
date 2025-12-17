import Observation
import Foundation

@Observable
class EventViewModel {
    struct State {
        var searchText: String = ""
        var events: [EventModel] = []
        var filteredEvents: [EventModel] {
            if searchText.isEmpty {
                return events
            } else {
                return events.filter { event in
                    // タイトルにヒット
                    if event.title.localizedCaseInsensitiveContains(searchText) {
                        return true
                    }
                    // タグのどれかにヒット
                    if event.tags.contains(where: { $0.localizedCaseInsensitiveContains(searchText) }) {
                        return true
                    }
                    return false
                }
            }
        }
    }
    var state : State
    init(state: State = .init()) {
        self.state = state
    }
}
