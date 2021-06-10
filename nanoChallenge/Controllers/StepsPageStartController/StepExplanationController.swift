//
//  StepExplanationController.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 01/05/21.
//

import Foundation
import UIKit

class StepExplanationViewController:UIViewController, UITableViewDataSource{
    let dataArray = Step.phase1Content()
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "writtenExplanationCell", for: indexPath)as! writtenExplanationCell
        cell.explanationImage.image = dataArray[indexPath.section].StepImage
        cell.writtenExplanation.text = dataArray[indexPath.section].StepDescription
        return cell
    }
}

