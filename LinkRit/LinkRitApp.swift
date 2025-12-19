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
            RootView(
                rootViewModel: RootViewModel(
                    state: RootViewModel.State(),
                    dependency: RootViewModel.Dependency(userManager: userManager)
                )
            )
        }
    }
}

