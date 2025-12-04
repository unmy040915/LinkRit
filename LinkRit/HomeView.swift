

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    var body: some View {
        NavigationView{
                VStack{
                    
                    List{
                        ForEach(viewModel.filteredEvents,id: \.self){ name in
                            Text(name)
                            
                        }
                    }
                    .searchable(text: $viewModel.searchText,prompt:"検索")
                    
                }
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading ){
                        Text("Link")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                })
            
                    }
        .scrollDismissesKeyboard(.immediately)
    }
    }

#Preview {
    HomeView()
}
