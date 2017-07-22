//
//  ViewController.swift
//  Passes
//
//  Created by Eduardo Cobuci on 15/07/17.
//  Copyright © 2017 Eduardo Cobuci. All rights reserved.
//

import UIKit
import SDWebImage

class EventsViewController: UITableViewController {
    let eventCellId = "EVENT_CELL"
    let detailsSegueId = "Details"
    var events: [Event]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = EventService().getEvents()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: self.eventCellId) ??
            UITableViewCell(style: .subtitle, reuseIdentifier: self.eventCellId)
        if let event = events?[indexPath.item] {
            cell.textLabel?.text = "\(event.person) @ \(event.company)"
            cell.detailTextLabel?.text = "2pm to 3pm"
            cell.imageView?.image = UIImage(named: event.company.lowercased())
            cell.accessoryType = .disclosureIndicator
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: detailsSegueId, sender: events?[indexPath.item])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
            case detailsSegueId:
                let detailsViewController = segue.destination as! EventDetailsViewController
                let event = sender as? Event
                detailsViewController.event = event
                detailsViewController.navigationItem.title = event?.person
                break
            default:
                break
        }
    }
}

