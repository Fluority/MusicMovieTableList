//
//  MovieTableViewController.swift
//  TableList
//
//  Created by liene.krista.neimane on 17/04/2023.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movies = Movie.createMovie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MoviesTableViewCell else { return UITableViewCell() }
        
        let movie = movies[indexPath.row]
        cell.configure(with: movie)

        return cell
    }
    
}
