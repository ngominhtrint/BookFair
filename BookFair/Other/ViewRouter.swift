//
//  ViewRouter.swift
//  BookFair
//
//  Created by TriNgo on 1/28/19.
//  Copyright © 2019 RoverDream. All rights reserved.
//

import UIKit

protocol ViewRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

extension ViewRouter {
    func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
}
