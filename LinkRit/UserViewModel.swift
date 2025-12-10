import Foundation
import SwiftUI

struct FavoriteTag: Identifiable {
    let id = UUID()
    let name: String
    let count: Int
}

@Observable
class UserViewModel {
 var favoriteTag: [FavoriteTag] = [
        .init(name: "サークル", count: 15),
        .init(name: "バドミントン", count: 12),
        .init(name: "ゲーム", count: 6),
        .init(name: "英会話", count: 5),
        .init(name: "運動", count: 4),
    ]
}
