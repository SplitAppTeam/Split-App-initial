//
//  AddAnEventViewController.swift
//  Split App
//
//  Created by Yaying Liang on 4/8/22.
//

import UIKit

class AddAnEventViewController: UIViewController {
    
    @IBOutlet weak var eventNameField: UITextField!
    @IBOutlet weak var eventDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneAddAnEvent(_ sender: Any) {
        
    }
    
    @IBAction func cancelAddAnEvent(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
