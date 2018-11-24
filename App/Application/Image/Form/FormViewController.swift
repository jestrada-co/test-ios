//
//  FormViewController.swift
//  App
//
//  Created by profesor on 17/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        startAvoidingKeyboard()
        firstNameTextField.text = UserDefaults.standard.string(forKey: DefaultKey.firstName.rawValue)
        lastNameTextField.text = UserDefaults.standard.string(forKey: DefaultKey.lastName.rawValue)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stopAvoidingKeyboard()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == firstNameTextField {
            UserDefaults.standard.set(textField.text, forKey: DefaultKey.firstName.rawValue)
        } else if textField == lastNameTextField{
            UserDefaults.standard.set(textField.text, forKey: DefaultKey.lastName.rawValue)
        }
    }


    
}
