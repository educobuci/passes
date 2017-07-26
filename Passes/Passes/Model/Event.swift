//
//  Event.swift
//  Passes
//
//  Created by Eduardo Cobuci on 15/07/17.
//  Copyright © 2017 Eduardo Cobuci. All rights reserved.
//

import Foundation

struct Event {
    let id: Int
    let start: Date
    let end: Date
    let host: Person
    let guest: Person
    let address: Address
}
