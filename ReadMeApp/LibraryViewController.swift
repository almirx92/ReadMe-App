
//
//  ViewController.swift
//  ReadMeApp
//
//  Created by Macbook on 1. 3. 2021..
//
import UIKit

class LibraryViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath);
       // let book = Book(title: "Title \(indexPath)", author: "Author \(indexPath)", image: UIImage(systemName: "\(indexPath.row).square.fill")!
       // )
        let book = Library.books[indexPath.row];
        
        
        cell.textLabel?.text = book.title;
        cell.imageView?.image = book.image;
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let book = Library.books[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.book = book
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

}

