//
//  EntryDetailViewController.swift
//  Journal
//
//  Created by Apple on 2/27/20.
//  Copyright © 2020 Jordan Crandell. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {

    var entryLandingPad: Entry?
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // bodyTextView has no border. app
        bodyTextView.layer.borderWidth = 1.0
        bodyTextView.layer.borderColor = UIColor.systemGray3.cgColor
    }
    
    func textFieldShouldReturn() {
 //       titleTextField.resignFirstResponder()
    }
    @IBAction func clearButtonTapped(_ sender: Any) {
        titleTextField.text = ""
        bodyTextView.text = ""
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        // get entry, title, body
        guard let theTitle = titleTextField.text,
            let theBody = bodyTextView.text else {return}
        
        // if landing pad holds an entry, then we update it
        if let entryToUpdate = entryLandingPad {
            
            EntryController.sharedInstance.update(oldEntry: entryToUpdate, updatedTitle: theTitle, updatedText: theBody)
        
        } else { // if landing pad does not hold an entry, then we add it
        
            EntryController.sharedInstance.addEntryWith(title: theTitle, text: theBody)
        }
        
        // dismiss the view
        navigationController?.popViewController(animated: true)
    }
    
    
} // end class
