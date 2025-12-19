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
    
    struct Dependency {
        let apiClient: APIClient
        let eventRepository: EventRepository
    }
    
    var state : State
    var dependency: Dependency
    
    init(state: State = .init(), dependency: Dependency) {
        self.state = state
        self.dependency = dependency
    }
    
    func fetcnEvents() async throws -> [Event] {
        let events = dependency.eventRepository.fetchEvents()
        return events
    }
    
}
