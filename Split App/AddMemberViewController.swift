//
//  AddMemberViewController.swift
//  Split App
//
//  Created by StellaShen on 2022/4/15.
//

import UIKit
import Parse
import MessageInputBar

class AddMemberViewController: UIViewController, MessageInputBarDelegate {
    
    let memberBar = MessageInputBar()
    var members = [PFObject]()
    var events = [PFObject]()
    var showMemberBar = false

    @IBOutlet weak var memberField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let memberBar = MessageInputBar()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onAddButton(_ sender: Any) {
        // find if the member exists in Members
        var query = PFQuery(className: "Members")
        query.whereKey("username", equalTo: memberField.text!)
        
        
    }
    
    
    override var inputAccessoryView: UIView? {
        return memberBar
    }
    
    override var canBecomeFirstResponder: Bool {
        return showMemberBar
    }
    
    @objc func keyboardWillBeHidden(note: Notification) {
        memberBar.inputTextView.text = nil
        showMemberBar = false
        becomeFirstResponder()
    }
    
    
    //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //        <#code#>
    //    }
    //
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        <#code#>
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
