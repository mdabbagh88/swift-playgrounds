//: Playground - noun: a place where people can play

import UIKit

/*****************************************************************
* Type casting in Swift is implemented with the is and as operators. 
* These two operators provide a simple and expressive way to check 
* the type of a value or cast a value to a different type.
*****************************************************************/
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}


class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}


let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]


var mov : Movie = Movie(name: "Casablanca", director: "Michael Curtiz")

var media : MediaItem = mov


/*****************************************************************
* Checking Type
*****************************************************************/
var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

movieCount
songCount
print("Media library contains \(movieCount) movies and \(songCount) songs")






/*****************************************************************
* Downcasting
* you can try to downcast to the subclass type with a type cast operator (as? or as!)
* Use the conditional form of the type cast operator (as?) when you are not sure if the downcast will succeed. 
* Use the forced form of the type cast operator (as!) only when you are sure that the downcast will always succeed.
*****************************************************************/

for item in library {
    if let movie = item as? Movie {
        print("Movie: '\(movie.name)', dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: '\(song.name)', by \(song.artist)")
    }
}






/*****************************************************************
* Type Casting for Any and AnyObject
* Swift provides two special type aliases for working with non-specific types:
*   1. 'AnyObject' can represent an instance of any class type.
*   2. 'Any' can represent an instance of any type at all, including function types.
*****************************************************************/

/*****************************************************************
*   1. 'AnyObject' can represent an instance of any class type.
*****************************************************************/
let someObjects: [AnyObject] = [
    Movie(name: "2001: A Space Odyssey", director: "Stanley Kubrick"),
    Movie(name: "Moon", director: "Duncan Jones"),
    Movie(name: "Alien", director: "Ridley Scott")
]

for object in someObjects {
    let movie = object as! Movie
    print("Movie: '\(movie.name)', dir. \(movie.director)")
}

for movie in someObjects as! [Movie] {
    print("Movie: '\(movie.name)', dir. \(movie.director)")
}






/*****************************************************************
*   2. 'Any' can represent an instance of any type at all, including function types.
*****************************************************************/
var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })


for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called '\(movie.name)', dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}


// NOTE: The cases of a switch statement use the 
//      forced version of the type cast operator (as, not as?) 
//      to check and cast to a specific type. 
//      This check is always safe within the context of a switch case statement.





