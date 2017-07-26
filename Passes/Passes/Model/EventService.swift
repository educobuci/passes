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
        return ["Apple", "Microsoft", "Google"].enumerated().map { (index, name) -> Event in
            let company = Company(id: index, name: name, phone: "#PHONE_\(name)",
                pictureUrl: "http://",
                addresses: [Address(id: index, title: "\(name) Office", street: "\(name) street", complement: nil, city: "\(name) City", state:
                    "\(name) State", zipCode: "54321", phone: "987-654-3210")])
            let person = Person(id: index, name: "John Snow", document: "0987654321", pictureUrl: "http://", phone: company.phone, mobile: company.phone, company: company)
            return Event(id: index, start: Date(), end: Date(), host: person, guest: person, address: company.addresses[0])
            //Event(id: index, start: Date.init(), end: Date.init(), company: company, person: "Tony Stark", location: "New York" )
        }
    }
}
