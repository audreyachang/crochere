//
//  Phase.swift
//  nanoChallenge
//
//  Created by Audrey Aurelia Chang on 03/05/21.
//

import Foundation

struct Phase{
    var PhaseID: Int?
    var PhaseName: String?
    
    init(phaseID: Int, phaseName: String) {
        self.PhaseID = phaseID
        self.PhaseName = phaseName
    }
    
}
