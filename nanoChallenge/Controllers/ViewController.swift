//
//  ViewController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 01/05/21.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var welcomeTextLabel: UILabel!
    @IBOutlet weak var welcomePageImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var continueToMaterialButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        welcomeTextLabel.text = "Welcome to CroChère!"
        welcomePageImage.image = #imageLiteral(resourceName: "CrochetHomePageIcon")
        descriptionLabel.text = "This app will help guide you in making an easy patterned scarf!\n Don't forget to enjoy yourself and have fun!"
        continueToMaterialButton.layer.cornerRadius = 7
    }

    @IBAction func continueToMaterial(_ sender: UIButton) {
    }
    
    @IBAction func unwindToStartPage( _ seg: UIStoryboardSegue) {
        
    }
}

