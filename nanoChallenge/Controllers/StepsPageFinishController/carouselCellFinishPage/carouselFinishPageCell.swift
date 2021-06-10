//
//  carouselFinishPageCell.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit

class carouselFinishPageCell:
    UICollectionViewCell {
    
    @IBOutlet weak var carouselSliderImage: UIImageView!
    
        static let identifier = String(describing: carouselFinishPageCell.self)
        
    func setUpImage(_ slideImage : Step){
        carouselSliderImage.image = slideImage.StepImage
    }
       
}
