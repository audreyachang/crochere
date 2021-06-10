//
//  MaterialExplanation.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 01/05/21.
//

import Foundation
import UIKit

class MaterialExplanationController:UIViewController, UITableViewDataSource{
    
    var materials = [Material]();
  
    @IBOutlet weak var nextPageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            //Additional setup
        nextPageButton.layer.cornerRadius = 7
        let Material1 = Material(materialName: "Yarn", materialImage: #imageLiteral(resourceName: "yarn"), materialDescription: "Find yarn that's specifically made for knitting! They're easier to work with")
        let Material2 = Material(materialName: "Crochet Hook", materialImage: #imageLiteral(resourceName: "hooks"), materialDescription: "A hook that is designed for crochet uses, make sure to use the correct hook size!")
        let Material3 = Material(materialName: "Scissors", materialImage: #imageLiteral(resourceName: "scissors"), materialDescription: "Any normal scissors that could be used for cutting the yarn, make sure it's sharp!")
        let Material4 = Material(materialName: "Tapestry Needle", materialImage: #imageLiteral(resourceName: "needles"), materialDescription: "A blunt tipped needle that is larger than normal needles, to help you weave in excess yarn.")
        
        materials.append(Material1)
        materials.append(Material2)
        materials.append(Material3)
        materials.append(Material4)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        materials.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "materialExplanationCell", for: indexPath)as! materialExplanationCell
        cell.materialDescription?.text = materials[indexPath.section].MaterialDescription
        cell.materialImage?.image = materials[indexPath.section].MaterialImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return materials[section].MaterialName
    }
}
