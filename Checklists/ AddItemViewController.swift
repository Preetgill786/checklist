//
//  AddItemViewControllerTableViewController.swift
//  Checklists
//
//  Created by MacStudent on 2019-11-05.
//  Copyright © 2019 Razeware. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
func addItemViewControllerDidCancel(_ controller: AddItemViewController)
    func addItemViewController(_ controller: AddItemViewController,didFinishAdding item: ChecklistItem)
}


class AddItemViewController: UITableViewController, UITextFieldDelegate {
    
    // var checklistViewController: ChecklistViewController
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    weak var delegate: AddItemViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    
    @IBAction func cancel() {
      delegate?.addItemViewControllerDidCancel(self)
    }
    @IBAction func done() {
      let item = ChecklistItem()
      item.text = textField.text!
      item.checked = false
      delegate?.addItemViewController(self, didFinishAdding: item)
    }
    
    override func tableView(_ tableView: UITableView,
                            willSelectRowAt indexPath: IndexPath)
        -> IndexPath? {
            return nil
    }
    
    
    func textField(_ textField: UITextField,shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        let oldText = textField.text!
        print("oldText------" + oldText)
        let stringRange = Range(range, in:oldText)!
        print("stringRange------>")
        print(stringRange.lowerBound)
        print(stringRange.upperBound)
        let newText = oldText.replacingCharacters(in: stringRange,with: string)
         print("newText------" + newText)
        print("\n\n")
        if newText.isEmpty {
            doneBarButton.isEnabled = false
        } else {
            doneBarButton.isEnabled = true
        }
//        if(self.textField.text!.isEmpty){
//            doneBarButton.isEnabled = false
//                   } else {
//                       doneBarButton.isEnabled = true
//                   }
        return true
        }
        
    }

