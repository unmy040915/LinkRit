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
                }
            }
        }
        
    }
}

#Preview {
    MBTIView()
}
