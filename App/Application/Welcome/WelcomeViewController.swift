//
//  WelcomeViewController.swift
//  App
//
//  Created by estudiante on 23/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func skip(){
        UserDefaults.standard.set(true, forKey: DefaultKey.welcomeView.rawValue)
        dismiss(animated: true)
    }
    
}
