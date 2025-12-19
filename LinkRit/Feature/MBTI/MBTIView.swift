import SwiftUI

struct MBTIView: View {
    @State var mbtiViewModel: MBTIViewModel
    var body: some View {
        ZStack{
            mbtiViewModel.state.backgroundColor
                .ignoresSafeArea()
            VStack{
                Text("MBTIを選択")
                    .font(.system(size: 30))
                Picker("", selection: $mbtiViewModel.state.selectionMBTI) {
                    ForEach(MBTI.mbtis ,id:\.mbtiName) { mbti in
                        Text(mbti.mbtiName)
                    }
                }
                .pickerStyle(.wheel)
                .onChange(of: mbtiViewModel.state.selectionMBTI) {
                    mbtiViewModel.dependency.userManager.user.mbti_type = mbtiViewModel.state.selectionMBTI
                    print("selectionMBTI: \(mbtiViewModel.state.selectionMBTI)")
                    
                }
                
                
                Button{
                    mbtiViewModel.goHomeView()
                }label:{
                    Text("次へ")
                        .frame(width:100,height:50)
                        .background(Color.black)
                        .foregroundStyle(mbtiViewModel.state.backgroundColor)
                        .cornerRadius(10)
                        .padding()
                }
                if mbtiViewModel.state.errorMessage != "" {
                    Text(mbtiViewModel.state.errorMessage)
                        .foregroundColor(.red)
                }
                Link("MBTIを受ける", destination: URL(string: "https://www.16personalities.com/ja/%E6%80%A7%E6%A0%BC%E8%A8%BA%E6%96%AD%E3%83%86%E3%82%B9%E3%83%88")!)
                    .padding()
                    .foregroundColor(mbtiViewModel.state.backgroundColor)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        
    }
}

//
//#Preview {
//    MBTIView()
//}
