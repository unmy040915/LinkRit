import SwiftUI
import Auth0


struct LoginView: View {
    @State var loginViewModel = LoginViewModel()
    @State var userManager = UserManager()

    // 呼び出し側でログイン処理を差し替えられるようにする
    var onLogin: (_ email: String, _ password: String) async throws -> Void = { _, _ in }
    var onContinueAsGuest: () -> Void = {}
    var onTapSignUp: () -> Void = {}
    var onTapForgotPassword: () -> Void = {}

    var body: some View {
        
        NavigationStack {
            VStack(spacing: 20) {

                // ロゴ/アプリ名（純正っぽく文字だけ）
                VStack(spacing: 8) {
                    Image(systemName: "link")
                        .font(.system(size: 44, weight: .semibold))
                    Text("Link")
                        .font(.largeTitle.bold())
                }
                .padding(.top, 24)

                // 入力フォーム（純正っぽく Form ではなく角丸グループ）
                VStack(spacing: 12) {
                    TextField("メールアドレス", text: $loginViewModel.state.email)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                        .textContentType(.username)
                        .padding(12)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                    SecureField("パスワード", text: $loginViewModel.state.password)
                        .textContentType(.password)
                        .padding(12)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                    HStack {
                        Button("パスワードを忘れた") {
                            onTapForgotPassword()
                        }
                        .font(.footnote)
                        .foregroundStyle(.secondary)

                        Spacer()
                    }
                }
                .padding(.top, 8)

                // ログインボタン
                Button {
                    userManager.testlogin(email: loginViewModel.state.email, password: loginViewModel.state.password)
                } label: {
                    HStack {
                        if loginViewModel.state.isLoading { ProgressView().tint(.white) }
                        Text(loginViewModel.state.isLoading ? "ログイン中…" : "ログイン")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                }
                .buttonStyle(.borderedProminent)
                .disabled( loginViewModel.state.isLoading)

                Spacer()

                // サインアップ導線
                HStack(spacing: 6) {
                    Text("アカウントを持っていない？")
                        .foregroundStyle(.secondary)
                    Button("新規登録") {
                        onTapSignUp()
                        
                    }
                    .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.bottom, 16)
            }
            .padding(.horizontal, 20)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

//    private var canSubmit: Bool {
//        !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
//        !password.isEmpty
//    }
}

#Preview {
    LoginView(
        onLogin: { email, password in
            // ダミー成功
            try await Task.sleep(nanoseconds: 700_000_000)
            print("login:", email, password)
        },
        onContinueAsGuest: {
            print("guest")
        },
        onTapSignUp: {
            print("signup")
        },
        onTapForgotPassword: {
            print("forgot")
        }
    )
}
