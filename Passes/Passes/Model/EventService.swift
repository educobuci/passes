//
//  EventService.swift
//  Passes
//
//  Created by Eduardo Cobuci on 15/07/17.
//  Copyright © 2017 Eduardo Cobuci. All rights reserved.
//

import Foundation

class EventService {
    func getEvents() -> [Event] {
        return ["Apple", "Microsoft", "Google"].map { company ->
            Event in Event(start: Date.init(), end: Date.init(), company: company, person: "Tony Stark", location: "New York" )
        }
    }
}
