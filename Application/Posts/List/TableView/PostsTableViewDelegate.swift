//
//  TableViewDelegate.swift
//  Test
//
//  Created by profesor on 3/11/18.
//  Copyright © 2018 uninorte. All rights reserved.
//

import UIKit

extension PostsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let post = posts[indexPath.row]
        PostStore.fetchPost(identifier: post.identifier) { (post) in
            guard let post = post else {
                return
            }
            print(post)
        }
    }
    
}
