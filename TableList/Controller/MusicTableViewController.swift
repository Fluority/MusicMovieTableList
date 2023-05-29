//
//  MusicTableViewController.swift
//  TableList
//
//  Created by liene.krista.neimane on 17/04/2023.
//

import UIKit

class MusicTableViewController: UITableViewController {

//        var trackList = [
//            "Carly Rae Japsen - Dedicated",
//            "Dj Khaled - father of",
//            "Injury Reserve - Jailbrake",
//            "Jonas Brothers - Happiness Begins ",
//            "Joyner Lucas - adhd",
//            "Maluma - 11-11",
//            "Never Young - LOSER",
//            "Rammstein - rammstein",
//            "Skepta - Ignorance Is Bliss",
//            "Skillet - Victory",
//            "Tylor the Creator - IGOR",
//            "YG - Stop Snitching",
//        ]
    
    var songs = Song.creatSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath)
        let song = songs[indexPath.row]
        
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print(indexPath)
            let detailVC = segue.destination as? DetailViewController
            detailVC?.song = songs[indexPath.row]
        }
    }

}
