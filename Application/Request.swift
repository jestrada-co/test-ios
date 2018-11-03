//
//  Request.swift
//  Test
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import Foundation

func requestPosts() {
    Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON { response in
        print("Request: \(String(describing: response.request))")   // original url request
        print("Response: \(String(describing: response.response))") // http url response
        print("Result: \(response.result)")                         // response serialization result
        
        if let json = response.result.value {
            print("JSON: \(json)") // serialized json response
        }
        
        if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
            print("Data: \(utf8Text)") // original server data as UTF8 string
        }
    }
}
