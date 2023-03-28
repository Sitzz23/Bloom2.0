//
//  Additionals.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 28/03/23.
//

import Foundation

struct Location {
    var id: String
    var name: String
    var address: String
    var latitude: Double
    var longitude: Double
    var venueType: String
}

let dummyLocation = Location(id: "location1", name: "Central Park", address: "59th to 110th St., from Central Park West to 5th Ave.", latitude: 40.7829, longitude: -73.9654, venueType: "Park")


struct Category {
    var id: String
    var name: String
    var image: String
}

let dummyCategory = Category(id: "category1", name: "Music", image: "music.png")


struct Notification {
    var id: String
    var userId: String
    var eventId: String
    var message: String
    var notificationDate: Date
}

let dummyNotification = Notification(id: "notification1", userId: "user1", eventId: "event1", message: "Reminder: You have an upcoming event tomorrow!", notificationDate: Date())
