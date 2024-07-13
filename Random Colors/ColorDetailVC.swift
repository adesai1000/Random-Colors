//
//  ColorDetailVC.swift
//  Random Colors
//
//  Created by Ayush Desai on 7/12/24.
//

import UIKit

class ColorDetailVC: UIViewController {
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? UIColor.black
    }
    
}
