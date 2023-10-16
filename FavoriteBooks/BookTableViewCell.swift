//
//  BookTableViewCell.swift
//  FavoriteBooks
//
//  Created by Dax Gerber on 10/16/23.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pagesLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func update(with book: Book) {
        titleLabel.text = book.title
        pagesLabel.text = book.length
        genreLabel.text = book.genre
        authorLabel.text = book.author
    }
    
    
}
