//
//  StepPage2Controller.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit
import AVFoundation

class StepPage2Controller: UIViewController {
    
    let phaseData = Step.phase2Content()
    
    
    @IBOutlet weak var phaseNameLabel: UILabel!
    @IBOutlet weak var stepNameLabel: UILabel!
    @IBOutlet weak var stepDescription: UILabel!
    @IBOutlet weak var carouselSlidePageControl: UIPageControl!
    @IBOutlet weak var voiceExplanationButton: UIButton!
    @IBOutlet weak var nextPageButton: UIButton!
    @IBOutlet weak var explanationModalButton: UIButton!
    @IBOutlet weak var prevPageButton: UIButton!
    
    var currentPage = 0{
        didSet{
            stepNameLabel.text=phaseData[currentPage].StepTitle
            stepDescription.text=phaseData[currentPage].StepName
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        stepNameLabel.text = phaseData[0].StepTitle
        stepDescription.text = phaseData[0].StepName
        nextPageButton.layer.cornerRadius = 7
        prevPageButton.layer.cornerRadius = 7
        phaseNameLabel.text = "Crocheting the Scarf"
        // Do any additional setup after loading the view.
    }
    @IBAction func voiceExplanation(_ sender: UIButton) {
        let utterance = AVSpeechUtterance( string: phaseData[currentPage].StepDescription!)

        utterance.rate = 0.5
        utterance.pitchMultiplier = 0.8
        utterance.postUtteranceDelay = 0.2
        utterance.volume = 0.8
        
        let voice = AVSpeechSynthesisVoice(language: "en-US")

        utterance.voice = voice
        
        let synthesizer = AVSpeechSynthesizer()

        synthesizer.speak(utterance)
        
    }
    
    @IBAction func unwindToPreviousStep( _ seg: UIStoryboardSegue) {
        
    }

}

extension StepPage2Controller: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return phaseData.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: carouselStepPageCell.identifier, for: indexPath)as! carouselStepPageCell
        cell.setUpImage(phaseData[indexPath.row])
        
        return cell
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        carouselSlidePageControl.currentPage = currentPage
    }
    
}
