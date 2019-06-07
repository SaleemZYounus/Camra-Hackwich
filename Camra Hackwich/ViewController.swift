//
//  ViewController.swift
//  Camra Hackwich
//
//  Created by Saleem Younus (Student) on 3/15/19.
//  Copyright © 2019 Grayslake Central Highschool. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func whenPhotoButtonTapped(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    
    }
    @IBAction func whenCamraButtonTapped(_ sender: UIButton) {if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        }
        else{
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        }
        present(imagePicker, animated: true, completion: nil)
    }
    
        let imagePicker = UIImagePickerController ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
        
        }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:  [String : Any]) {
        picker.dismiss(animated: true) {
            self.imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        }
    
    
    }

}
