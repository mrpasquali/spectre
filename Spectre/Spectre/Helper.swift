//
//  Helper.swift
//  Spectre
//
//  Created by Fernando Fernandes on 10/25/15.
//  Copyright © 2015 MarinaPasquali. All rights reserved.
//

import Foundation

/// Helper functions go here. For example: a function that returns the current date.
class Helper {
    
    /// Returns the current date in the following format: year/month/day
    class func currentDate() -> String {
        
        let today = NSDate()
        
        let calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)!
        
        // Source http://stackoverflow.com/a/32169498/584548
        let components = calendar.components([.Year, .Month, .Day], fromDate: today)
        
        let year = String(components.year)
        let month = String(components.month)
        let day = String(components.day)
        
        return year
            + SpecialCharacters.forwardSlash
            + month
            + SpecialCharacters.forwardSlash
            + day
    }
}
