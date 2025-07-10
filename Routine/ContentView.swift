//
//  ContentView.swift
//  Routine
//
//  Created by shalinth adithyan on 08/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var data = Activities()
    var body: some View {
        NavigationStack{
            List(data.activities){ activity in
                NavigationLink{
                    Text("Detail View")
                }label:{
                    HStack{
                        Text(activity.title)
                        
                        Spacer()
                        
                        Text(String(activity.completionCount))
                    }
                }
            }
            .navigationTitle(Text("Routine"))
        }
    }
}

#Preview {
    ContentView()
}
