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
