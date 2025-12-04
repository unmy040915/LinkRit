import SwiftUI

struct MBTIView: View {
    @State var vm = MBTIViewModel()
    var body: some View {
        ZStack{
            vm.backgroundColor
                .ignoresSafeArea()
            VStack{
                Text("MBTIを選択")
                    .font(.system(size: 30))
                Picker("", selection: $vm.selectionMBTI) {
                    ForEach(vm.MBTIs){ MBTI in
                        Text("\(MBTI.name)")
                        
                    }
                }
                .pickerStyle(.wheel)
                .onChange(of: vm.selectionMBTI) {
                    print("selectionMBTI: \(vm.selectionMBTI)")
                }
                
                
                Button{
                    
                }label:{
                    
                    Text("次へ")
                        .frame(width:100,height:50)
                        .background(Color.black)
                        .foregroundStyle(vm.backgroundColor)
                        .cornerRadius(10)
                        .padding()
                }
                Link("MBTIを受ける", destination: URL(string: "https://www.16personalities.com/ja/%E6%80%A7%E6%A0%BC%E8%A8%BA%E6%96%AD%E3%83%86%E3%82%B9%E3%83%88")!)
                    .padding()
                    .foregroundColor(vm.backgroundColor)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
        
    }
}

#Preview {
    MBTIView()
}
