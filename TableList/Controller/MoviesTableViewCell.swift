//
//  MoviesTableViewCell.swift
//  TableList
//
//  Created by liene.krista.neimane on 17/04/2023.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(with movie: Movie) {
        titleLabel.text = movie.title
        yearLabel.text = movie.year
        directorLabel.text = movie.director
        movieImageView.image = UIImage(named: movie.poster)
    }

}
