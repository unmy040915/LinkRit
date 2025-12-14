
import Foundation
import JWTDecode

enum FaculityType: String, Codable{
    case FacultyofLaw = "法学部"
    case SocialSciences = "産業社会学部"
    case Letters = "文学部"
    case ImageArtsandSciences = "映像学部"
    case BusinessAdministration = "経営学部"
    case PolicyScience = "政策科学部"
    case ComprehensivePsychology = "総合心理学部"
    case GlobalLiberalArts = "グローバル教養学部"
    case Economics = "経済学部"
    case SportandHealthScience = "スポーツ健康学部"
    case GastronomyManagement = "食マネジメント学部"
    case ScienceandEngineering = "理工学部"
    case LifeSciences = "生命科学部"
    case PharmaceuticalSciences = "薬学部"
}

struct User {
    let link_user_code: String
    let name: String
    let mbti_type: String
    let gender: String
    let age: Int
    let faculity: FaculityType
}

extension User {
    
    static var empty: Self {
        return User(
            link_user_code: "",
            name: "",
            mbti_type: "",
            gender: "",
            age: 0,
            faculity: .FacultyofLaw
        )
    }
    
    static func from(_ idToken: String) -> Self {//Auth0の認証のみで利用
        guard
            let jwt = try? decode(jwt: idToken),
            let link_user_code = jwt.subject,
            let name = jwt.claim(name: "name").string
        else {
                return .empty
            }
        return User(
            link_user_code: link_user_code,
            name: name,
            mbti_type: "",
            gender: "",
            age: 0,
            faculity: .FacultyofLaw
        )
    }
}
