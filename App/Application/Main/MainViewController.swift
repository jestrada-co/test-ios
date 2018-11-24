//
//  MainViewController.swift
//  App
//
//  Created by estudiante on 23/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !UserDefaults.standard.bool(forKey: DefaultKey.welcomeView.rawValue) {
            performSegue(withIdentifier: "showWelcome", sender: nil)
            
        }
    }
    
}
