//
//  AddAnEventViewController.swift
//  Split App
//
//  Created by Yaying Liang on 4/8/22.
//

import UIKit
import AlamofireImage
import Parse

class AddAnEventViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var eventNameField: UITextField!
    @IBOutlet weak var eventDate: UIDatePicker!
    @IBOutlet weak var totalAmountField: UITextField!
    @IBOutlet weak var peopleField: UITextField!
    @IBOutlet weak var peopleStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backToLogin(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func doneAddAnEvent(_ sender: Any) {
        
    }
    
    @IBAction func cancelAddAnEvent(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func peopleStepperPressed(_ sender: UIStepper) {
        peopleField.text = Int(sender.value).description
    }
    
    @IBAction func onCameraButton(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            picker.sourceType = .camera
        } else {
            picker.sourceType = .photoLibrary
        }
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.editedImage] as! UIImage
        
        // resize the image
        let size = CGSize(width: 80, height: 80 )
        let scaledImage = image.af.imageAspectScaled(toFill: size)
        
        imageView.image = scaledImage
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
