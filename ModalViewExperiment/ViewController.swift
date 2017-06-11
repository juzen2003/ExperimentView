//
//  ViewController.swift
//  ModalViewExperiment
//
//  Created by Yu-Jen Chang on 6/10/17.
//  Copyright © 2017 Yu-Jen Chang. All rights reserved.
//
//  test out a button to lauch image picker view

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // image picker view
    @IBAction func presentImagePicker(_ sender: Any) {
        let imagePickerView = UIImagePickerController()
        self.present(imagePickerView, animated: true, completion: nil)
    }
    
    // activity view
    @IBAction func presentActivityView(_ sender: Any) {
        let image = UIImage()
        let activityVC = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(activityVC, animated: true, completion: nil)
    }
    
    // alert view
    @IBAction func presentAlertView(_ sender: Any) {
        let alertVC = UIAlertController(title: "Alert Test", message: "This is a test", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action in self.dismiss(animated: true, completion: nil)})
        alertVC.addAction(okAction)
        self.present(alertVC, animated: true, completion: nil)
    }
    
}

