//
//  LogInViewController.swift
//  Split App
//
//  Created by StellaShen on 2022/4/7.
//

import UIKit
import Parse
import BDBOAuth1Manager

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func TwitterLoginBtn(_ sender: Any) {
        let twitterURL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: twitterURL, success:{
            //what we will do if the user successfully loged in to twitter account
            UserDefaults.standard.set(true, forKey: "userLoggedIn")
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }, failure: { (Error) in
            print("cannot be loged in!")
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        // Perform loginSegue if username and pw match
        PFUser.logInWithUsername(inBackground: username, password: password) {
            (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                self.performSegue(withIdentifier: "loginErrorSegue", sender: nil)
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
        
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(String(describing: error?.localizedDescription))")
            }
        }
        
        // create a members table
        let member = PFObject(className: "Members")
        
        member["username"] = usernameField.text!
        member.saveInBackground {(success, error) in
            if success {
                self.dismiss(animated: true, completion: nil)
                print("user saved!")
            } else {
                print("user saving error!")
            }
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

    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedIn") == true {
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
    }
}
