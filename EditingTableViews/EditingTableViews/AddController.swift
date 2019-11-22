//
//  AddController.swift
//  EditingTableViews
//
//  Created by Oscar Victoria Gonzalez  on 11/21/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class AddController: UIViewController {
    
@IBOutlet weak var addItemTextField: UITextField!
    
var anItem: GroceryList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addItemTextField.delegate = self
        anItem = GroceryList(item: "apples")
    }
    
}

extension AddController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        anItem?.item = textField.text ?? "Pursuit"
        return true
    }
    
}
