
import SwiftUI

struct HomeView: View {
    
    @State var homeViewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                List (homeViewModel.state.filteredEvents){event in
                    VStack{
                        AsyncImage(url: event.thumbnailUrl) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 360, height: 140)

                            Text(event.title)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)

                        Text(event.eventDateText)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.caption)
                        
                        HStack{
                            Spacer()
                            ForEach(event.tags, id: \.self) { tag in
                                Text("#\(tag)")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            .padding(1)
                            
                            
                            
                        }
                        
                        
                    }
                }
                .searchable(text: $homeViewModel.state.searchText,prompt: "検索")
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
    HomeView(
        homeViewModel: HomeViewModel(
            state: .init(
                searchText: "",
                events: [.mock]
            )
        )
    )
}
