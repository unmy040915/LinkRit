import Foundation

struct Event: Identifiable, Decodable {
    let eventId: String
    let title: String
    let startAt: String
    let endAt: String
    let location: String
}
