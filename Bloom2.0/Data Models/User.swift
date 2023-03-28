//
//  User.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 28/03/23.
//

import Foundation

struct User {
    var id: String
    var email: String
    var password: String
    var name: String
    var interests: [String]
    var eventsBooked: [String]
    var eventsHosted: [String]
}

let dummyUser = User(id: "user1", email: "testuser@gmail.com", password: "password123", name: "Test User", interests: ["music", "art"], eventsBooked: ["event1", "event2"], eventsHosted: [])


