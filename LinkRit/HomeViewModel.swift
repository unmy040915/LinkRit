
import Foundation
import Observation
import SwiftUI

@Observable
class HomeViewModel {
    
    let events = ["NEXUS","watnow","ChatGPT","Google Assistant","Apple Siri"]
    var searchText: String = ""
    var filteredEvents: [String] {
            if searchText.isEmpty {
                return events
            } else {
                return events.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
}


