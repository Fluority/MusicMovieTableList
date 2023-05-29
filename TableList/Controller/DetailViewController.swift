//
//  DetailViewController.swift
//  TableList
//
//  Created by liene.krista.neimane on 17/04/2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackNameLabel: UILabel!
    
    var song: Song!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if song != nil {
            trackImageView.image = UIImage(named: song.cover)
            trackNameLabel.text = song.track + " " + song.album
            trackNameLabel.numberOfLines = 0
        }
    }

}
