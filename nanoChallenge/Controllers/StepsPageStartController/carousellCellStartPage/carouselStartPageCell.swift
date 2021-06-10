//
//  carouselStartPageCell.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit

class carouselStartPageCell: UICollectionViewCell {
    static let identifier = String(describing: carouselStartPageCell.self)
    @IBOutlet weak var carouselSlideImage: UIImageView!
    
    func setUpImage(_ slideImage : Step){
        carouselSlideImage.image = slideImage.StepImage
    }
}
