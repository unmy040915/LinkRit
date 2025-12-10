import SwiftUI
import Charts

struct UserView: View {
    @State var vm = UserViewModel()

    var body: some View {
        VStack{
            Text("心理テスト結果")
                .font(.largeTitle)
                .bold()
                .padding()
            ZStack{
                Chart(vm.favoriteTag) { tag in
                        SectorMark(
                            angle: .value("count", tag.count)
                        )
                        .foregroundStyle(by: .value("name", tag.name))
                    }
                    .chartPlotStyle { plotContent in
                        plotContent
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                    }
                    .chartLegend(.hidden)
                
                Circle()
                    .foregroundStyle(.white)
                    .frame(width:200,height: 200)

                Image(systemName: "person.circle")
                    .font(.system(size: 50))
                    .frame(width: 50, height: 50)

            }
            .frame(width: 300, height: 300)

            Divider()
            
            Spacer()
                
        }
        .padding(.top)
        
        
    }
}


#Preview {
    UserView()
}
