//
//  DetailViewController.swift
//  ReadMeApp
//
//  Created by Macbook on 1. 3. 2021..
//

import Foundation
import UIKit

class DetailViewController:UIViewController {
    
    var book: Book?
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func updateImage(){
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerController.isSourceTypeAvailable(.camera)
            ?.camera
            : .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true , completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let book = book else {
            return
        }
        
        imageView.image = book.image
        titleLabel.text = book.title
        authorLabel.text = book.author
    }
}

extension DetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info [.editedImage] as? UIImage else { return }
        imageView.image = selectedImage
        Library.saveImage(selectedImage, forBook: book!)
        dismiss(animated: true )
    }
}
