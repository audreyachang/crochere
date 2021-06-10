//
//  FinishViewController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit

class FinishViewController: UIViewController {

    
    @IBOutlet weak var finishCongratulationsLabel: UILabel!
    @IBOutlet weak var finishCongratulationsMessage: UILabel!
    @IBOutlet weak var useAppAgainMessage: UILabel!
    @IBOutlet weak var backToOnboardingButton: UIButton!
    @IBOutlet weak var finishedProjectIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backToOnboardingButton.layer.cornerRadius = 7
        finishCongratulationsLabel.text = "Congratulations!"
        finishCongratulationsMessage.text = "You have finished crocheting this crochet project!"
        finishedProjectIcon.image = #imageLiteral(resourceName: "ScarfFinishedIcon")
        useAppAgainMessage.text = "Feel free to go back and make another scarf if you'd like!"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
