//
//  MainFeedViewController.swift
//  Split App
//
//  Created by StellaShen on 2022/4/7.
//

import UIKit
import Parse

class MainFeedViewController: UIViewController {

    var events = [PFObject]()
    var selectedEvent: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        var query = PFQuery(className: "Events")
        query.includeKeys(["author", "name", "date"])
        query.addDescendingOrder("createdAt")
//        query.findObjectsInBackground { (events, error) in
//            if events != nil {
//                self.events = events!
//                self.tableView.reloadData()
//            }
//        }
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        let event = events[section]
//        // ?? means whatever is on the left is nil, then send [] to comments
//        let name = (event["name"] as? [PFObject]) ?? []
//        return events.count + 2
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
