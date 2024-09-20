import Foundation

struct ShowInfo: Hashable {
    let date: String
    let city: String
    let venue: String
}

struct DataSource {
    
    static let videoUrl: String = "https://www.youtube.com/5UBl0rLEl0w?autoplay=1"
    static let headerTitle: String = "Taylor Swift"
    static let headerSubtitle: String = "The Eras Tour"
    static let listTitle: String = "U.S. Dates"
    
    static let showInfo: [ShowInfo] = [
        .init(date: "2023-03-17", city: "Glendale", venue: "State Farm Stadium"),
        .init(date: "2023-03-18", city: "Glendale", venue: "State Farm Stadium"),
        .init(date: "2023-03-24", city: "Paradise", venue: "Allegiant Stadium"),
        .init(date: "2023-03-25", city: "Paradise", venue: "Allegiant Stadium"),
        .init(date: "2023-03-31", city: "Arlington", venue: "AT&T Stadium"),
        .init(date: "2023-04-01", city: "Arlington", venue: "AT&T Stadium"),
        .init(date: "2023-04-02", city: "Arlington", venue: "AT&T Stadium"),
        .init(date: "2023-04-13", city: "Tampa", venue: "Raymond James Stadium"),
        .init(date: "2023-04-14", city: "Tampa", venue: "Raymond James Stadium"),
        .init(date: "2023-04-15", city: "Tampa", venue: "Raymond James Stadium"),
        .init(date: "2023-04-21", city: "Houston", venue: "NRG Stadium"),
        .init(date: "2023-04-22", city: "Houston", venue: "NRG Stadium"),
        .init(date: "2023-04-23", city: "Houston", venue: "NRG Stadium"),
    ]
}
