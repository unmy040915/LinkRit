import Foundation
import SwiftUI


@Observable
class MBTIViewModel {
     struct State{
         var selectionMBTI: String = "建築家INTJ"
         var backgroundColor: Color {
             MBTI.mbtis.first(where: { $0.mbtiName == selectionMBTI })?.mbtiColor ?? .white
         }
    }
    var state : State
    init(state: State = .init()) {
        self.state = state
    }
}
