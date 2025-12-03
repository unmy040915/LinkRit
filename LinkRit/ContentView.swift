import SwiftUI

struct ContentView: View {
    
    @State var selection = 1
    
    var body: some View {
        
        TabView(selection: $selection) {
            Tab ("ホーム", systemImage: "house",value: 0){
                HomeView()
            }
            Tab ("検索", systemImage: "magnifyingglass",value: 1){
                SearchView()
            }
            Tab ("プロフィール", systemImage: "person",value: 2){
                UserView()
            }
        }
    }
}

#Preview {
    ContentView()
}
