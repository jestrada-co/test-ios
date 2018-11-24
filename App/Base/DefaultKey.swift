//
//  DefaultKey.swift
//  App
//
//  Created by estudiante on 23/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Foundation

enum DefaultKey: String, CaseIterable {
    
    case welcomeView
    case firstName = "FIRST_NAME"
    case lastName = "LAST_NAME"
    
    static var sessionCases : [DefaultKey] = [.firstName, .lastName]
    
    static func reset() {
        allCases.forEach{ (key) in
            UserDefaults.standard.removeObject(forKey: key.rawValue)
        }
    }
    
    static func resetSession() {
        sessionCases.forEach{ (key) in
            UserDefaults.standard.removeObject(forKey: key.rawValue)
        }
    }
    
}
