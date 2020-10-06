//
//  ViewController.swift
//  Assignment_02
//
//  Created by Ravi Rachamalla on 2020-10-06.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var testTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let testSchedule = Schedule()
        
        testSchedule.addNewEvent(title: "Test 1", description: "Event Description", dateString: "2020/10/30 12:00")
        
        testTextView.text = testSchedule.outputAllEvents()
    }


}

