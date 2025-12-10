

import SwiftUI

struct PsychologicalTestView: View {
    var body: some View {
        VStack{
            Text("問題文")
                .padding(.leading, 15)
                .frame(maxWidth: .infinity, alignment: .leading)
                
            HStack(spacing: 30){
                Text("そう思う")
                VStack{
                    Text("1")
                    Button{
                        
                    }label: {
                        Image(systemName: "circle")
                    }
                }
                VStack{
                    Text("2")
                    Button{
                        
                    }label: {
                        Image(systemName: "circle")
                    }
                }
                VStack{
                    Text("3")
                    Button{
                        
                    }label: {
                        Image(systemName: "circle")
                    }
                }
                VStack{
                    Text("4")
                    Button{
                        
                    }label: {
                        Image(systemName: "circle")
                    }
                }
                VStack{
                    Text("5")
                    Button{
                        
                    }label: {
                        Image(systemName: "circle")
                    }
                }
                Text("そう思わない")
            }
            
            
        }
        
    }
}

#Preview {
    PsychologicalTestView()
}
