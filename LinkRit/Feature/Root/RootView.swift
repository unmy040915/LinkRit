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
            ContentView()
        case .mbti:
            MBTIView(mbtiViewModel: MBTIViewModel(state: MBTIViewModel.State(viewMode: $rootViewModel.state.ViewMode),dependency: MBTIViewModel.Dependency(userManager: rootViewModel.dependency.userManager)))
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
