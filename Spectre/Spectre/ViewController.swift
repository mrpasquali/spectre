//
//  ViewController.swift
//  Spectre
//
//  Created by pasquali on 9/22/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import UIKit
import Alamofire

class SearchViewController: UIViewController {

    @IBOutlet weak var firstTitle: UILabel!
    @IBOutlet weak var okButton: UIButton!
    @IBAction func enterAction(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(
            .GET, // GET, POST, etc...
            "https://api.flightstats.com/flex/flightstatus/rest/v2/json/flight/status/G3/2161/dep/2015/10/20", // URL
            parameters: [
                "appId": "7351e7ee",
                "appKey": "780f8112018790fe400f3cec7782fa26",
                "utc": "false"])
            .responseJSON { response in
                debugPrint(response)
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
                
        }
    }
}

