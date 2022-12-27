//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Orlando Moraes Martins on 27/12/22.
//

import UIKit

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveComplete), nil)
    }
    
    @objc func saveComplete(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer){
        print("Save Finished!")
    }
}
