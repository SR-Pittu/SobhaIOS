//
//  MovieData.swift
//  Pittu_Movies
//
//  Created by Pittu,Sobhareddy on 4/28/23.
//

import Foundation
import UIKit
struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot: String
    let cast :[String]
}

struct Genre{
    let category: String
    let movies : [Movie]
}

let g1 = Genre(category: "Drama",
               movies: [
                Movie(title: "Shehzada", image: UIImage(named: "sheh")!, releasedYear: "2023", movieRating: "7.8", boxOffice: "7.8 Million", moviePlot: "A stroy of a son who is seperated from his own mother", cast: ["Karthik Aryan","Kriti Sanon"]),
               Movie(title: "Dasara", image: UIImage(named: "dasara")!, releasedYear: "2023", movieRating: "7.9", boxOffice: "20.7 Million", moviePlot: "A family man with drinking habbit and his love story", cast: ["Nani","Keerthi Suresh"]) ,
                Movie(title:"Slumdog Millionaire",image:UIImage(named: "slumdog millionaire")!,releasedYear: "2008",movieRating: "8",boxOffice: "378.1M",moviePlot: "As 18-year-old Jamal Malik (Dev Patel) answers questions on the Indian version of Who Wants to Be a Millionaire, flashbacks show how he got there.",cast: ["Dev Patel","Ferida Pinto"]),
                Movie(title: "The Last Kingdom", image: UIImage(named: "king")!, releasedYear: "2015", movieRating: "9.8", boxOffice: "1238 million", moviePlot: "The Last Kingdom begins with young Uhtred as a boy. He's heir of Bebbanburg, an area of land held by his father, Lord Uhtred.", cast: ["Alexander Dreymon", "Emily Cox"]),
                Movie(title: "Beau Is Afraid", image: UIImage(named: "afraid")!, releasedYear: "2023", movieRating: "6", boxOffice: "2.7 million", moviePlot: "The tale of a very lost soul named Beau Wasserman, the only son of his mother Mona Wasserman.", cast: ["Joaquin Phoenix", "Patti LuPone"])])

let g2 = Genre(category: "Horror", movies: [Movie(title: "Evil Dead Rise", image: UIImage(named: "evil")!, releasedYear: "2023", movieRating: "7.2", boxOffice: "30.6 million", moviePlot: "A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons.", cast: ["Mirabai Pease", "Richard Crouchley"]),Movie(title: "Renfield", image: UIImage(named: "ren")!, releasedYear: "2023", movieRating: "6.7", boxOffice: "65 million", moviePlot: "Renfield, Dracula's henchman and inmate at the lunatic asylum for decades, longs for a life away from the Count.", cast: ["Nicholas Hoult", "Nicolas Cage"]),Movie(title: "Yellowjackets", image: UIImage(named: "yellow")!, releasedYear: "2021", movieRating: "7.1", boxOffice: "588 million", moviePlot: "A wildly talented high school girl soccer team becomes the (un)lucky survivors of a plane crash deep in the Canadian wilderness.", cast: ["Melanie Lynskey", "Tawny Cypress"]),Movie(title: "The Last of Us", image: UIImage(named: "last")!, releasedYear: "2023", movieRating: "8.8", boxOffice: "1.3 million", moviePlot: "After a global pandemic destroys civilization, a hardened survivor takes charge of a 14-year-old girl who may be humanity's last hope.", cast: ["Pedro Pascal", "Bella Ramsey"]),Movie(title: "The Pope's Exorcist", image: UIImage(named: "pope")!, releasedYear: "2023", movieRating: "6.2", boxOffice: "53.1 million", moviePlot: "Follow Gabriele Amorth, the Vatican's leading exorcist, as he investigates the possession of a child and uncovers a conspiracy the Vatican has tried to keep secret.", cast: ["Russell Crowe", "Daniel Zovatto"])])

let g3 = Genre(category: "Action", movies: [Movie(title: "The Mandalorian", image: UIImage(named: "manda")!, releasedYear: "2019", movieRating: "8.7", boxOffice: "2456 million", moviePlot: "The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic.", cast: [" Pedro Pascal", "Chris Bartlett"]),Movie(title: "The Night Agent", image: UIImage(named: "night")!, releasedYear: "2023", movieRating: "7.3", boxOffice: "216.4 million", moviePlot: "Low-level FBI agent Peter Sutherland works in the basement of the White House manning a phone that never rings.", cast: ["Gabriel Basso", "Luciane Buchanan"]),Movie(title: "Ghosted", image: UIImage(named: "ghost")!, releasedYear: "2023", movieRating: "5.6", boxOffice: "6537 million", moviePlot: "Cole falls head over heels for enigmatic Sadie, but then makes the shocking discovery that she's a secret agent.", cast: ["Chris Evans", "Ana de Armas"]),Movie(title: "Avatar", image: UIImage(named: "avatar")!, releasedYear: "2022", movieRating: "7.7", boxOffice: "213.7 million", moviePlot: "Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat", cast: ["Sam Worthington", "Zoe Saldana"]),Movie(title: "Fast-X", image: UIImage(named: "fast")!, releasedYear: "2023", movieRating: "7.5", boxOffice: "127 million", moviePlot: "Dom Toretto and his family are targeted by the vengeful son of drug kingpin Hernan Reyes.", cast: ["Vin Diesel", "Jordana Brewster"])])

let g4 = Genre(category: "Thriller", movies: [Movie(title: "Cocaine Bear", image: UIImage(named: "bear")!, releasedYear: "2023", movieRating: "6.7", boxOffice: "88 million", moviePlot: "An oddball group of cops, criminals, tourists and teens converge on a Georgia forest where a huge black bear", cast: ["Keri Russell", "Alden Ehrenreich"]),Movie(title: "Nefarious ", image: UIImage(named: "nefa")!, releasedYear: "2023", movieRating: "6.4", boxOffice: "2.7 million", moviePlot: "On the day of his scheduled execution, a convicted serial killer gets a psychiatric evaluation during which he claims he is a demon", cast: ["Sean Patrick Flanery", "Jordan Belfi"]),Movie(title: "The Boogeyman", image: UIImage(named: "booge")!, releasedYear: "2023", movieRating: "6.5", boxOffice: "67.2 million", moviePlot: "Adaptation of Stephen King's 'The Boogeyman'.", cast: ["Sophie Thatcher", "Chris Messina"]),Movie(title: "Tetris", image: UIImage(named: "tetris")!, releasedYear: "2023", movieRating: "7.4", boxOffice: "7.6 million", moviePlot: "The story of how one of the world's most popular video games found its way to players around the globe.", cast: ["Taron Egerton, Mara Huf"]),Movie(title: "Hunger", image: UIImage(named: "hunger")!, releasedYear: "2023", movieRating: "6.6", boxOffice: "694.4 million", moviePlot: "A woman running her family's noodle restaurant receives an invitation to join the fine-dining industry under the tutelage of an infamous chef.", cast: ["Nopachai Chaiyanam", "Chutimon Chuengcharoensukying"])])


let gArray = [g1,g2,g3,g4]
