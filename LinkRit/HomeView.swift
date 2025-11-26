

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            
            let event = ["NEXUS","watnow","ChatGPT","Google Assistant","Apple Siri"]
            @State var searchText: String = ""
                VStack{
                    
                    List{
                        ForEach(event,id: \.self){ name in
                            Text(name)
                            
                        }
                    }
                    .searchable(text: $searchText,prompt:"検索")
                    
                }
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarLeading ){
                        Text("Link")
                            .font(.largeTitle)
                            .bold(true)
                    }
                    ToolbarItem(placement: .navigationBarTrailing ){
                        Image(systemName: "person.fill")
                            .font(.title)
                    }
                    
                })
            
                    }
        .scrollDismissesKeyboard(.immediately)
    }
    }

#Preview {
    HomeView()
}
