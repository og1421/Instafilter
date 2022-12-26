//
//  ContentView.swift
//  Instafilter
//
//  Created by Orlando Moraes Martins on 26/12/22.
//

import SwiftUI

struct ContentView: View{
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .alert("Change background", isPresented: $showingConfirmation) {
                    Button("Red"){ backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Blue") { backgroundColor = .blue }
                    Button("Cancel", role: .cancel){ }
                } message: {
                    Text("Select a new color")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
