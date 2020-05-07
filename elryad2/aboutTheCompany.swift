//
//  aboutTheCompany.swift
//  elryad2
//
//  Created by Ahmed on 10/26/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class aboutTheCompany: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var lebel2: UILabel!
    @IBOutlet weak var lebel3: UILabel!
    @IBOutlet weak var lebel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOpacity = 0.2
        label.layer.shadowOffset = .zero
        label.layer.shadowRadius = 4
        label.layer.shouldRasterize = true
        label.layer.rasterizationScale = UIScreen.main.scale
        //
     
        lebel2.layer.shadowColor = UIColor.black.cgColor
        lebel2.layer.shadowOpacity = 0.2
        lebel2.layer.shadowOffset = .zero
        lebel2.layer.shadowRadius = 4
        lebel2.layer.shouldRasterize = true
        lebel2.layer.rasterizationScale = UIScreen.main.scale
        //
        lebel3.layer.shadowColor = UIColor.black.cgColor
        lebel3.layer.shadowOpacity = 0.2
        lebel3.layer.shadowOffset = .zero
        lebel3.layer.shadowRadius = 4
        lebel3.layer.shouldRasterize = true
        lebel3.layer.rasterizationScale = UIScreen.main.scale
        //
        lebel4.layer.shadowColor = UIColor.black.cgColor
        lebel4.layer.shadowOpacity = 0.2
        lebel4.layer.shadowOffset = .zero
        lebel4.layer.shadowRadius = 4
        lebel4.layer.shouldRasterize = true
        lebel4.layer.rasterizationScale = UIScreen.main.scale
    }
    

    
}
