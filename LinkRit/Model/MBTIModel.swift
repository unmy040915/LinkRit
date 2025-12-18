import Foundation
import SwiftUI
struct MBTI{
    var mbtiName: String
    var mbtiColor: Color
}

extension MBTI {
    static let mbtis: [MBTI] = [
        MBTI(mbtiName: "建築家INTJ",mbtiColor: .analyst),
        MBTI(mbtiName: "討論者INTP",mbtiColor: .analyst),
        MBTI(mbtiName: "指揮官ENTJ",mbtiColor: .analyst),
        MBTI(mbtiName: "討論者ENTP",mbtiColor: .analyst),
        MBTI(mbtiName: "提唱者INFJ",mbtiColor: .diplomat),
        MBTI(mbtiName: "仲介者INFP",mbtiColor: .diplomat),
        MBTI(mbtiName: "主人公ENFJ",mbtiColor: .diplomat),
        MBTI(mbtiName: "運動家ENFP",mbtiColor: .diplomat),
        MBTI(mbtiName: "ロジスティシャンISTJ",mbtiColor: .watchman),
        MBTI(mbtiName: "擁護者ISFJ",mbtiColor: .watchman),
        MBTI(mbtiName: "幹部ESTJ",mbtiColor: .watchman),
        MBTI(mbtiName: "領事ESFJ",mbtiColor: .watchman),
        MBTI(mbtiName: "巨匠ISTP",mbtiColor: .explorer),
        MBTI(mbtiName: "冒険家ISTP",mbtiColor: .explorer),
        MBTI(mbtiName: "起業家INFJ",mbtiColor: .explorer),
        MBTI(mbtiName: "エンターテイナーENFP",mbtiColor: .explorer)
    ]
}
