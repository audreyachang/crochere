//
//  carouselStepPageCell.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit

class carouselStepPageCell: UICollectionViewCell {
    static let identifier = String(describing: carouselStepPageCell.self)
    @IBOutlet weak var carouselSliderImage: UIImageView!
    
    func setUpImage(_ slideImage : Step){
        carouselSliderImage.image = slideImage.StepImage
    }
    
}
