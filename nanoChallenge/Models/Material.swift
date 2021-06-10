//
//  Material.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 03/05/21.
//

import Foundation
import UIKit
struct Material{
    var MaterialName: String?
    var MaterialImage: UIImage?
    var MaterialDescription: String?
    
    init(materialName:String, materialImage:UIImage, materialDescription:String) {
        self.MaterialName = materialName
        self.MaterialImage = materialImage
        self.MaterialDescription = materialDescription
    }
    
}
