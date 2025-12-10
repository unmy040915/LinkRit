import SwiftUI
import Observation

struct HomeView: View {

    private var viewModel = HomeViewModel()

    var body: some View {
        @Bindable var bindableViewModel = viewModel

        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.filteredEvents, id: \.self) { name in
                        Text(name)
                    }
                }
                .searchable(text: $bindableViewModel.state.searchText,
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
