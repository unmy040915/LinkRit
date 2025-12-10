import Foundation
import SwiftUI


@Observable
class MBTIViewModel {
    var selectionMBTI: String = "建築家INTJ"
    private let model: MBTIModel
    init(model: MBTIModel = MBTIModel()) {
            self.model = model
        }
    var mbtis: [MBTIModel.MBTI] {
            model.mbtis
        }
    
    var backgroundColor: Color {
        model.mbtis.first(where: { $0.mbtiName == selectionMBTI })?.mbtiColor ?? .white
    }
    
}
