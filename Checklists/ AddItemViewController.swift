//
//  AddItemViewControllerTableViewController.swift
//  Checklists
//
//  Created by MacStudent on 2019-11-05.
//  Copyright © 2019 Razeware. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {
   
   // var checklistViewController: ChecklistViewController

   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    
    @IBAction func cancel() {
      navigationController?.popViewController(animated: true)
    }
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
//        let item = ChecklistItem()
//        item.text = textField.text!
//
//        //checklistViewController.add(item)
      navigationController?.popViewController(animated: true)
    }
  
    override func tableView(_ tableView: UITableView,
              willSelectRowAt indexPath: IndexPath)
              -> IndexPath? {
      return nil
    }
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    textField.becomeFirstResponder()
    }
   
    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,
    replacementString string: String) -> Bool {
        let oldText = textField.text!
        let stringRange = Range(range, in:oldText)!
        let newText = oldText.replacingCharacters(in: stringRange,with: string)
        if newText.isEmpty {
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
          }
        return true
        }
}
