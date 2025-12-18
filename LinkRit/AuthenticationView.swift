import SwiftUI

struct AuthenticationView: View {
    @State var authenticationViewModel: AuthenticationViewModel
    var body: some View {
        switch authenticationViewModel.state.viewMode {
        case .login:
            LoginView(loginViewModel: LoginViewModel(
                state: LoginViewModel.State(viewMode: $authenticationViewModel.state.viewMode),
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
