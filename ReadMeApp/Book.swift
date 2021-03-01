//
//  Book.swift
//  ReadMeApp
//
//  Created by Macbook on 1. 3. 2021..
//

import Foundation
import UIKit

struct Book {
    
    let title: String;
    let author: String;
    var image: UIImage {
        LibrarySymbol.letterSquare(letter: title.first).image;
    }
    
}
