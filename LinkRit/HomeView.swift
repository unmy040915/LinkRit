
import SwiftUI
import Observation

struct HomeView: View {
    
    @State var homeViewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(homeViewModel.state.filteredEvents, id: \.self) { name in
                        Text(name)
                    }
                }
                .searchable(text: $homeViewModel.state.searchText,
                            prompt: "検索")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Link")
                        .font(.largeTitle)
                        .bold()
                }
            }
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

#Preview {
    HomeView()
}
