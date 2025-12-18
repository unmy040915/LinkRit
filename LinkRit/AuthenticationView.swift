import SwiftUI

struct AuthenticationView: View {
    var authenticationViewModel: AuthenticationViewModel
    var body: some View {
        switch authenticationViewModel.state.viewMode {
        case .login:
            LoginView(loginViewModel: LoginViewModel(
                state: LoginViewModel.State(),
                dependency: LoginViewModel.Dependency(userManager: authenticationViewModel.dependency.userManager))
            )
        case .signup:
            SignUpView()
        case .home:
            HomeView()
        }
    }
}

#Preview {
    AuthenticationView(
        authenticationViewModel: AuthenticationViewModel(
            state: AuthenticationViewModel.State(viewMode: .login),
            dependency: AuthenticationViewModel.Dependency(userManager: UserManager())
        )
    )
}
