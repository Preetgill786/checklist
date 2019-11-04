//
//  ChecklistItem .swift
//  Checklists
//
//  Created by MacStudent on 2019-11-04.
//  Copyright © 2019 Razeware. All rights reserved.
//

import Foundation

class ChecklistItem {
var text = ""
var checked = false
    
    func toggleChecked() {
      checked = !checked
    }
}
