import SwiftUI

struct ContentView: View {
    
    @State var selection = 1
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            HomeView()
                .tabItem {
                    Label("ホーム", systemImage: "house")
                }
                .tag(1)
            
            SearchView()
                .tabItem {
                    Label("検索", systemImage: "magnifyingglass")
                }
                .tag(2)
            
            UserView()
                .tabItem {
                    Label("プロフィール", systemImage: "person")
                }
                .tag(3)
            
        }
        
    }
}

#Preview {
    ContentView()
}
