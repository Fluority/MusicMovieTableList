//
//  Song.swift
//  TableList
//
//  Created by liene.krista.neimane on 17/04/2023.
//

import Foundation

struct Song {
    let track: String
    let album: String
    let cover: String
    
    static func creatSong() -> [Song] {
        
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for i in 0..<tracks.count {
            let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
            songs.append(song)
        }

        return songs
    }
    
}

struct Movie {
    let title: String
    let poster: String
    let year: String
    let director: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.title
        let posters = DataManager.shared.poster
        let years = DataManager.shared.year
        let directors = DataManager.shared.director
        
        for i in 0..<titles.count {
            let movie = Movie(title: titles[i], poster: posters[i], year: years[i], director: directors[i])
            movies.append(movie)
        }

        return movies
    }
}
