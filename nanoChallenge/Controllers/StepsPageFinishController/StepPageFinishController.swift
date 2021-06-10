//
//  StepPageFinishController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit
import AVFoundation

var phaseData = Step.phase3Content()

class StepPageFinishController: UIViewController {
    
    @IBOutlet weak var phaseName: UILabel!
    @IBOutlet weak var stepName: UILabel!
    @IBOutlet weak var StepShortDescription: UILabel!
    @IBOutlet weak var carouselPageControl: UIPageControl!
    @IBOutlet weak var explanationVoiceButton: UIButton!
    @IBOutlet weak var explanationWrittenButton: UIButton!
    @IBOutlet weak var toPrevButton: UIButton!
    @IBOutlet weak var toFinishButton: UIButton!
    
    var currentPage = 0{
        didSet{
                stepName.text = phaseData[currentPage].StepTitle
                StepShortDescription.text = phaseData[currentPage].StepName
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepName.text = phaseData[0].StepTitle
        StepShortDescription.text = phaseData[0].StepName
        phaseName.text = "Finishing the Project"
        toPrevButton.layer.cornerRadius = 7
        toFinishButton.layer.cornerRadius = 7
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
    
  
}

extension StepPageFinishController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        phaseData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: carouselFinishPageCell.identifier, for: indexPath)as! carouselFinishPageCell
        
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
        carouselPageControl.currentPage = currentPage
    }
    
}
