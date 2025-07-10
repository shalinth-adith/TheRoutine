//
//  EntryView.swift
//  Routine
//
//  Created by shalinth adithyan on 10/07/25.
//

import SwiftUI

struct EntryView: View {
    @State private var showMain = false
    var body: some View {
        if showMain{
            ContentView()
        }else {
            VStack{
                Image("loogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Button("Get Started"){
                    withAnimation {
                        showMain = true
                    }
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(.systemBackground))
        }
    }
}

#Preview {
    EntryView()
}
