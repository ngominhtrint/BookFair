//
//  UIViewController+Alert.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentAlert(withTitle title:String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
    
}
