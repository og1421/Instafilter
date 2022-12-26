//
//  ImagePicker.swift
//  Instafilter
//
//  Created by Orlando Moraes Martins on 26/12/22.
//

import PhotosUI
import SwiftUI

struct imagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        
        let picker = PHPickerViewController(configuration: config)
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        
    }
}
