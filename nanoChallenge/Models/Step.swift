//
//  Step.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 03/05/21.
//

import Foundation
import UIKit

struct Step{
    var StepTitle: String?
    var StepImage: UIImage?
    var StepName: String?
    var StepDescription: String?
    
    
    init(stepImage:UIImage,stepTitle:String, stepName:String, stepDescription:String) {
        self.StepTitle = stepTitle
        self.StepImage = stepImage
        self.StepName = stepName
        self.StepDescription = stepDescription
    }
    
   static func phase1Content()->[Step]{
    var dataArray: [Step] = []
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "StartSlipKnot"), stepTitle: "Step 1", stepName: "Creating a Slip Knot", stepDescription: "To create a slip knot, first make a loop with your yarn around your crochet hook."))
    
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "FinishSlipKnot"), stepTitle: "Step 2", stepName: "Finish Your Slip Knot", stepDescription:  "Finish your slip knot by hooking the yarn on the longer side, bring it through and lightly tug on the short end of the yarn."))
    
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "StartChaining"), stepTitle: "Step 3", stepName: "Creating a Foundation", stepDescription: "Create the base of your project by making what is known as a chain. Hook the yarn on the longer side and pull through the loop."))
    
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "ContinueChaining"), stepTitle: "Step 4", stepName: "Continue Chaining", stepDescription: "Continue chaining as shown in the previous step until you've reached your desired scarf length."))
    
    return dataArray
    }
    
   static func phase2Content()->[Step]{
         var dataArray: [Step] = []
    dataArray.append(Step(stepImage:#imageLiteral(resourceName: "SC-Step1"), stepTitle: "Step 1", stepName: "Starting the Pattern", stepDescription: "Put your hook through the second stitch nearest to the hook. Remember, don't count the current active loop!"))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step2"), stepTitle: "Step 2", stepName:"Single Crocheting", stepDescription:"Start by pulling the yarn through the stitch you currently have your hook in. Don't pull it through the loop on your hook!"))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step3"), stepTitle: "Step 3", stepName:"Yarning Over" , stepDescription:"Make sure that you have two loops on your hook. Loop the strand of yarn still connected to the ball over the hook."))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step4"), stepTitle: "Step 4", stepName:"Finishing of the Stitch" , stepDescription:"Pull the yarn that has been looped around the hook through boot loops. Make sure that the loops aren't too loose or wide."))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step5"), stepTitle: "Step 5", stepName:"Continue the Pattern" , stepDescription:"Repeat the previous steps until you've reached the end of the project."))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step6"), stepTitle: "Step 6", stepName:"Turning Over the Project" , stepDescription:"To continue the project, you need to turn it. Start by chaining one chain and then you can turn the project and continue."))
    dataArray.append(Step(stepImage: #imageLiteral(resourceName: "SC-Step7"), stepTitle: "Step 7", stepName:"Continue Crocheting" , stepDescription:"Continue crocheting and turning the project untill you've reached the desired width of your scarf."))
   
        return dataArray
    }
    
    static func phase3Content()->[Step]{
        var dataArray : [Step] = []
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "CutExcessYarn"), stepTitle:"Step 1", stepName: "Cutting Excess Yarn", stepDescription: "To finish off, cut the length of yarn still attached to your scarf, leave a bit of thread to weave into the project."))
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "FinishingOff"), stepTitle:"Step 2", stepName: "Yarning Off" , stepDescription: "Pull the excess yarn through the final loop left on your crochet hook."))
        dataArray.append(Step(stepImage: #imageLiteral(resourceName: "WeaveEnds"), stepTitle:"Step 3", stepName: "Weaving in the Ends", stepDescription: "Use your hook or a tapestry needle to weave in the excess yarn, weave it in small areas so that it's not visible"))
        return dataArray
    }
        
}
