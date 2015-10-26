//
//  ViewController.swift
//  Spectre
//
//  Created by pasquali on 9/22/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: IBOutlets
    
    /// Airline code typed by users.
    /// Complete list here: https://en.wikipedia.org/wiki/List_of_airline_codes
    @IBOutlet weak var airlineCodeTextField: UITextField!
    
    /// Flight number typed by users.
    /// Values to test: http://www.aeroportoguarulhos.net/horario-voos-aeroporto-guarulhos
    @IBOutlet weak var flightNumberTextField: UITextField!
    
    /// This label shows the departure gate to users.
    /// By default it's hidden in the storyboard.
    @IBOutlet weak var departureGateLabel: UILabel!
    
    // MARK: - IBActions
    
    @IBAction func getFlightDetailsButton(sender: AnyObject) {
        departureGateLabel.hidden = true
        
            FlightStats.getFlightDetails(
            flightNumberTextField.text!,
            airline: airlineCodeTextField.text!,
            label: departureGateLabel
        )
    }
}
