import SwiftUI

struct RootView: View {
    @State var rootViewModel: RootViewModel
    var body: some View {
        switch rootViewModel.state.ViewMode {
        case .login:
            LoginView(loginViewModel: LoginViewModel(
                            state: LoginViewModel.State(viewMode: $rootViewModel.state.ViewMode),
                            dependency: LoginViewModel.Dependency(userManager: rootViewModel.dependency.userManager))
                        )
        case .signup:
            SignUpView(signupViewModel: SignUpViewModel(
                            state: SignUpViewModel.State(viewMode: $rootViewModel.state.ViewMode),
                            dependency: SignUpViewModel.Dependency(userManager: rootViewModel.dependency.userManager)))
        case .home:
            HomeView()
        }
    }
}

#Preview {
    RootView(
        rootViewModel: RootViewModel(
            state: RootViewModel.State(ViewMode: .login),
                dependency: RootViewModel.Dependency(userManager: UserManager())
            )
        )
}
