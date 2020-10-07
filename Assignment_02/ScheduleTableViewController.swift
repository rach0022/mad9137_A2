//
//  ScheduleTableViewController.swift
//  Assignment_02
//
//  Created by Ravi Rachamalla on 2020-10-06.
//  Copyright © 2020 rav. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    //creating a (non-optional) scheudule object
    let tableSchedule: Schedule = Schedule()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        //adding at least 3 default test events
        self.tableSchedule.addNewEvent(title: "Dentist Appointment", description: "Teeth & Gum Cleaning", dateString: "2020/05/08 16:43")
        self.tableSchedule.addNewEvent(title: "Doctors Appointment", description: "Yearly Physical", dateString: "2020/06/14 16:43")
        self.tableSchedule.addNewEvent(title: "Godzilla Strikes London", description: "Predicted time the King of Monsters will reach London, England", dateString: "2020/07/18 16:43")
        
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tableSchedule.eventCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventTableCell", for: indexPath)

        // Configure the cell...
        if let title =  self.tableSchedule.eventArray[indexPath.row].title {
            // show the event title in the cell 
            cell.textLabel?.text = "#\(indexPath.row + 1) \(title)"
        }
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // Pass the event from one cell to the next view
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //first check if its the right segue for ShowEventDetails
        if segue.identifier == "ShowEventDetails" {
            // to make sure I can use the functions from the EventViewController I need to select it
            // as the the type
            let destinationViewController = segue.destination as? EventViewController
            
            // now check the index path and if we have a value lets send that event to the next view
            if let indexPathRow = tableView.indexPathForSelectedRow?.row {
                destinationViewController?.selectedEvent = self.tableSchedule.eventArray[indexPathRow]
            }
        }
    }
    

}
