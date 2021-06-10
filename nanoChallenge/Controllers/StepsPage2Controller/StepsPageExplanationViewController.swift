//
//  StepsPageExplanationViewController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 05/05/21.
//

import UIKit

class StepsPageExplanationViewController: UIViewController, UITableViewDataSource {
    let dataArray = Step.phase2Content()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataArray[section].StepTitle
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "writtenExplanationStepCell", for: indexPath)as! writtenExplanationStepCell
        cell.explanationImage.image = dataArray[indexPath.section].StepImage
        cell.writtenExplanation.text = dataArray[indexPath.section].StepDescription
        return cell
    }

}
