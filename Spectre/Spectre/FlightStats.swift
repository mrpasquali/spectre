//
//  FlightStats.swift
//  Spectre
//
//  Created by Fernando Fernandes on 10/25/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

/// Holds FlightStats APIs
class FlightStats {
    
    /// Calls Flight Status to get the flight details.
    /// Updates the given label with the departure gate.
    class func getFlightDetails(flightNumber: String, airline: String, label: UILabel) {
        
        Alamofire.request(
            
            // Operation (GET, POST, etc)
            .GET,
            
            // Flightstats query URL
            FlightStatsAPI.suffix
                + airline
                + SpecialCharacters.forwardSlash
                + flightNumber
                + SpecialCharacters.forwardSlash
                + FlightStatsAPI.departure
                + Helper.currentDate(),
            
            // Parameters
            parameters: [
                "appId": FlightStatsAPI.appId,
                "appKey": FlightStatsAPI.appKey,
                "utc": "false"])
            
            // Response
            .responseJSON { response in
                //debugPrint(response)
                
                if let value: AnyObject = response.result.value {
                    let json = JSON(value)
                    
                    // The JSON response is actually tricky to understand.
                    // This link helped me out: http://www.jsoneditoronline.org
                    if let gate = json["flightStatuses"][0]["airportResources"]["departureGate"].string {
                        label.text = gate
                        label.hidden = false
                    }
                }
        }
    }
}