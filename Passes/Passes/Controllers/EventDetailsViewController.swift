//
//  EventDetailsViewController.swift
//  Passes
//
//  Created by Eduardo Cobuci on 21/07/17.
//  Copyright © 2017 Eduardo Cobuci. All rights reserved.
//

import UIKit

class EventDetailsViewController: UIViewController {
    var event: Event?
    
    @IBOutlet weak var companyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.companyImage.image = UIImage(named: event!.company.lowercased())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.title = "Duds"
    }
}
