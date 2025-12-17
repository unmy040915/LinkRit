
import SwiftUI

struct HomeView: View {
    
    @State var homeViewModel = HomeViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                EventView()
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
    HomeView( )
}
