import Foundation

final class EventRepository {
    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func fetchEvents() async throws -> [Event] {
        try await apiClient.get("/events")
    }
    
    func fetchEventDetail(eventId: Int) async throws -> Event {
        try await apiClient.get("/events/\(eventId)")
    }
}
