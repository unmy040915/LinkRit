import Foundation


struct HomeModel: Identifiable, Hashable{
    var id: String { eventId }
    let eventId: String
    let thumbnailUrl: URL?
    let title: String
    let tags: [String]
    let startDate: Date
    let endDate: Date
    let note: String?
    let location: String?
    let ApplicationURL: URL?
    
    var eventDateText: String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy/MM/dd"
            
            let timeFormatter = DateFormatter()
            timeFormatter.dateFormat = "HH:mm"
            
            return "\(dateFormatter.string(from: startDate)) " +
                   "\(timeFormatter.string(from: startDate)) ~ " +
                   "\(timeFormatter.string(from: endDate))"
        }
}
extension HomeModel {
    static var mock = HomeModel(
        eventId: "mock_001",
        thumbnailUrl: URL(string: "https://plus.unsplash.com/premium_photo-1661306437817-8ab34be91e0c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8JUUzJTgyJUE0JUUzJTgzJTk5JUUzJTgzJUIzJUUzJTgzJTg4fGVufDB8fDB8fHww"),
        title: "NEXUS",
        tags: ["交流","初心者歓迎"],
        startDate: Calendar.current.date(
            from: DateComponents(year: 2025, month: 12, day: 15, hour: 17, minute: 0)
        )!,
        endDate: Calendar.current.date(
            from: DateComponents(year: 2025, month: 12, day: 15, hour: 19, minute: 0)
        )!,
        note: "テスト",
        location: "OIC",
        ApplicationURL: nil
    )
}
