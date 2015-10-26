//
//  Constants.swift
//  Spectre
//
//  Created by Fernando Fernandes on 10/25/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import Foundation

/// Global constants.
///
/// The struct approach was chosen so we can, for example:
///
///  SpecialCharacters.forwardSlash
///
/// ... and so on.
/// More details here: http://stackoverflow.com/a/26252377/584548

/// Special characters, like forward slash ("/")
struct SpecialCharacters {
    static let forwardSlash = "/"
}

/// FlightStats API stuff
struct FlightStatsAPI {
    static let suffix = "https://api.flightstats.com/flex/flightstatus/rest/v2/json/flight/status/"
    static let departure = "dep/"
    static let appId = "7351e7ee"
    static let appKey  = "780f8112018790fe400f3cec7782fa26"
}
