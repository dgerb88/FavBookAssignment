//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Dax Gerber on 10/16/23.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var lengthTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    
    init?(coder: NSCoder, book: Book?) {
        self.book = book
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.book = nil
        super.init(coder: coder)
    }
    
    
    func updateView() {
        guard let book = book else { return }
        
        titleTextField.text = book.title
        authorTextField.text = book.author
        genreTextField.text = book.genre
        lengthTextField.text = book.length
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTextField.text,
            let author = authorTextField.text,
            let genre = genreTextField.text,
            let length = lengthTextField.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: "UnwindToBookTable", sender: self)
    }
    
}
