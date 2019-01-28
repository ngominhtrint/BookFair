//
//  UITextField+EmptyText.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

extension UITextField {
    var textOrEmptyString: String {
        return text ?? ""
    }
}
