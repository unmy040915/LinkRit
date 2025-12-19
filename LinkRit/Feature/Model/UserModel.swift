

import Foundation
import JWTDecode

struct User {
    let link_user_code: String
    var name: String
    var mbti_type: String
}

extension User {
    
    static var empty: Self {
        return User(
            link_user_code: "",
            name: "",
            mbti_type: "",
        )
    }
    
    static func from(_ idToken: String) -> Self {//Auth0の認証のみで利用
        guard
            let jwt = try? decode(jwt: idToken),
            let link_user_code = jwt.subject,
            let name = jwt["name"].string
        else {
                return .empty
            }
        return User(
            link_user_code: link_user_code,
            name: name,
            mbti_type: "",
        )
    }
}
