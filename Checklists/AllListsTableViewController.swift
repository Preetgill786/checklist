//
//  AllListsTableViewController.swift
//  Checklists
//
//  Created by MacStudent on 2019-11-12.
//  Copyright © 2019 Razeware. All rights reserved.
//

import UIKit

class AllListsTableViewController: UITableViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return 3
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = makeCell(for: tableView)
    cell.textLabel!.text = "List \(indexPath.row)"
    return cell
  }
  func makeCell(for tableView: UITableView) -> UITableViewCell {
    let cellIdentifier = "Cell"
    if let cell =
      tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
      return cell
    } else {
      return UITableViewCell(style: .default,reuseIdentifier: cellIdentifier)
    }
  }
  override func tableView(_ tableView: UITableView,
             didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "ShowChecklist", sender: nil)
  }
  
  
}
