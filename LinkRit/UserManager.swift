
import Foundation
import Auth0

@Observable
class UserManager{
    var isAuthenticated = false
    var user = User.empty
    func login(email: String, password: String) {
        Auth0
            .authentication()
            .login(usernameOrEmail: email,
                   password: password,
                   realmOrConnection: "Username-Password-Authentication",
                   scope: "openid")
            .start { result in
                switch result {
                case .success(let credentials):
                    self.user = User.from(credentials.idToken)
                    self.isAuthenticated = true
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }
    func logout(email: String, password: String) {
    }
    func signup(email: String, password: String,name: String) {
        Auth0
            .authentication()
            .signup(email: email,
                    password: password,
                    connection: "Username-Password-Authentication",
                    userMetadata:  ["name": name])
            .start { result in
                switch result {
                case .success(let user):
                    print("User signed up: \(user)")
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }

}
