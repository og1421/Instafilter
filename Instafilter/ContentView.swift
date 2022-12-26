//
//  ContentView.swift
//  Instafilter
//
//  Created by Orlando Moraes Martins on 26/12/22.
//

import CoreImage
import CoreImage.CIFilterBuiltins
import SwiftUI

struct ContentView: View{
    @State private var image: Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image"){
                showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker){
            imagePicker()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
