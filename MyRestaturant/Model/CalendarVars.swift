//
//  CalendarVars.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 1/29/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import Foundation


let date = Date()
let calendar = Calendar.current
let day = calendar.component(.day, from: date)
var weekday = calendar.component(.weekday, from: date) - 1
var month = calendar.component(.month, from: date) - 1
var year = calendar.component(.year, from: date)
