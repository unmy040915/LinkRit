

import SwiftUI

struct HomeView: View {
    @State var vm = HomeViewModel()
    var body: some View {
        NavigationView{
                VStack{
                    
                    List{
                        ForEach(vm.event,id: \.self){ name in
                            Text(name)
                            
                        }
                    }
                    .searchable(text: $vm.searchText,prompt:"検索")
                    
                }
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading ){
                        Text("Link")
                            .font(.largeTitle)
                            .bold(true)
                    }
                    
                })
            
                    }
        .scrollDismissesKeyboard(.immediately)
    }
    }

#Preview {
    HomeView()
}
