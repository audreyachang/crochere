//
//  StepsPageController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 01/05/21.
//

import Foundation
import UIKit
import AVFoundation

class StepsPageViewController: UIViewController {


    
  
    @IBOutlet weak var phaseLabel: UILabel!
    @IBOutlet weak var stepLabel: UILabel!
    @IBOutlet weak var stepTitleLabel: UILabel!
    @IBOutlet weak var carouselPageControl: UIPageControl!
    @IBOutlet weak var voiceExplanationButton: UIButton!
    @IBOutlet weak var nextStepButton: UIButton!
    @IBOutlet weak var viewExplanationButton: UIButton!
    
    let displayData = Step.phase1Content()
    var currentPage = 0{
        didSet{
            stepTitleLabel.text = displayData[currentPage].StepName
            stepLabel.text = displayData[currentPage].StepTitle
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        phaseLabel.text = "Starting Your Project"
        stepTitleLabel.text = displayData[0].StepName
        stepLabel.text = displayData[0].StepTitle
        nextStepButton.layer.cornerRadius = 7
    }

    @IBAction func voiceExplainBtn(_ sender: UIButton) {
        let utterance = AVSpeechUtterance( string: displayData[currentPage].StepDescription!)

        utterance.rate = 0.5
        utterance.pitchMultiplier = 0.8
        utterance.postUtteranceDelay = 0.2
        utterance.volume = 0.8
        
        let voice = AVSpeechSynthesisVoice(language: "en-US")

        utterance.voice = voice
        
        let synthesizer = AVSpeechSynthesizer()

        synthesizer.speak(utterance)
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
        
    }
}

extension StepsPageViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: carouselStartPageCell.identifier, for: indexPath)as! carouselStartPageCell
        cell.setUpImage(displayData[indexPath.row]) 
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
        carouselPageControl.currentPage = currentPage
    }
    
}
