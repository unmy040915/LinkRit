import SwiftUI

struct SignUpView: View {
    @State var userManager = UserManager()
    @State var signupViewModel = SignUpViewModel()
    var body: some View {
        VStack(spacing:40){
        Text("新規登録")
            .font(.largeTitle.bold())
        
            VStack(spacing: 12) {
                TextField("メールアドレス", text: $signupViewModel.state.email)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .keyboardType(.emailAddress)
                    .textContentType(.username)
                    .padding(12)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                SecureField("パスワード", text: $signupViewModel.state.password)
                    .textContentType(.password)
                    .padding(12)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            Button {
                userManager.signup(email: signupViewModel.state.email, password: signupViewModel.state.password, name: signupViewModel.state.name)
            } label: {
                HStack {
                    if signupViewModel.state.isLoading { ProgressView().tint(.white) }
                    Text(signupViewModel.state.isLoading ? "ログイン中…" : "サインアップ")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
            }
            .buttonStyle(.borderedProminent)
            .disabled( signupViewModel.state.isLoading)
            Spacer()
        }
        .padding(.horizontal, 20)
        }

}

#Preview {
    SignUpView()
}
