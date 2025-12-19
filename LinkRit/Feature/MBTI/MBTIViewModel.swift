import Foundation
import SwiftUI


@Observable
class MBTIViewModel {
    struct Dependency {
            let userManager: UserManager
        }
     struct State{
         var selectionMBTI: String = "建築家INTJ"
         var backgroundColor: Color {
             MBTI.mbtis.first(where: { $0.mbtiName == selectionMBTI })?.mbtiColor ?? .white
         }
         @Binding var viewMode: ViewDestination
         var errorMessage: String = ""
    }
    var state : State
    let dependency: Dependency
    init(state: State, dependency: Dependency) {
            self.state = state
            self.dependency = dependency
        }
}

extension MBTIViewModel {
    func goHomeView() {
        if dependency.userManager.user.mbti_type != "" {
            state.viewMode = .home
        } else {
            state.errorMessage = "選択してください"
        }
    }
}
