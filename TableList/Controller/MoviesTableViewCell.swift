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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
