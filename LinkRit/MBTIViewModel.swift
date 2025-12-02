import Foundation
import SwiftUI


@Observable
class MBTIViewModel {
    struct MBTI: Identifiable, Hashable {
        var name: String
        var Color: Color
        var id: String { self.name }
    }
    
    let MBTIs: [MBTI] = [
        MBTI(name: "建築家INTJ-A/INTJ-T",Color: .analyst),
        MBTI(name: "討論者INTP-A/INTP-T",Color: .analyst),
        MBTI(name: "指揮官ENTJ-A/ENTJ-T",Color: .analyst),
        MBTI(name: "討論者ENTP-A/ENTP-T",Color: .analyst),
        MBTI(name: "提唱者INFJ-A/INFJ-F",Color: .diplomat),
        MBTI(name: "仲介者INFP-A/INFP-T",Color: .diplomat),
        MBTI(name: "主人公ENFJ-A/ENFJ-T",Color: .diplomat),
        MBTI(name: "運動家ENFPーA/ENFP-T",Color: .diplomat),
        MBTI(name: "ロジスティシャンISTJ-A/ISTJ-T",Color: .watchman),
        MBTI(name: "擁護者ISFJ-A/ISFJ-T",Color: .watchman),
        MBTI(name: "幹部ESTJ-A/ESTJ-T",Color: .watchman),
        MBTI(name: "領事ESFJ-A/ESFJ-T",Color: .watchman),
        MBTI(name: "巨匠ISTP-A/ISTP-T",Color: .explorer),
        MBTI(name: "冒険家ISTP-A/ISTP-T",Color: .explorer),
        MBTI(name: "起業家INFJ-A/INFJ-F",Color: .explorer),
        MBTI(name: "エンターテイナーENFP-A/ENFP-T",Color: .explorer)
    ]
    var selectionMBTI: String = "建築家INTJ-A/INTJ-T"
    
    var backgroundColor: Color {
        MBTIs.first(where: { $0.name == selectionMBTI })?.Color ?? .white
    }
    
}
