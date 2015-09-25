//
//  ViewController.swift
//  Spectre
//
//  Created by pasquali on 9/22/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var firstTitle: UILabel!
    @IBOutlet weak var enterAction: UILabel!
    @IBOutlet weak var okButton: UIButton!
   
    override func viewDidLoad        super.viewDidLoad()
        
        enterAction.layer.cornerRadius = 100
        enterAction.layer.borderWidth = 800
        enterAction.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
 }

