import SwiftUI

@main
struct LinkRitApp: App {
    let userManager = UserManager()
    
    var viewMode: ViewDestination {
        if userManager.isAuthenticated {
            return .home
        } else {
            return .login
        }
    }

    var body: some Scene {
        WindowGroup {
            AuthenticationView(
                authenticationViewModel: AuthenticationViewModel(
                    state: AuthenticationViewModel.State(),
                    dependency: AuthenticationViewModel.Dependency(userManager: userManager)
                )
            )
        }
    }
}
