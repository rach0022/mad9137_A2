//
//  EventViewController.swift
//  Assignment_02
//
//  Created by Ravi Rachamalla on 2020-10-06.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    // create an optional event property
    var selectedEvent: Event?
    
    // create connections between the labels/ text view
    @IBOutlet weak var TitleTextLabel: UILabel!
    
    @IBOutlet weak var DateTextLabel: UILabel!
    @IBOutlet weak var DescriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
        // set the title and date labels and set the textView to the description
        if let date = self.selectedEvent?.date, let title = self.selectedEvent?.title, let description = self.selectedEvent?.description {
            TitleTextLabel.text = title
            DateTextLabel.text = "\(date.description)"
            DescriptionTextView.text = description
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
