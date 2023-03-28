//
//  Event.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 28/03/23.
//

import Foundation

class Event {
    let id: String
    let name: String
    let startDate: Date
    let endDate: Date
    let location: String
    let category: String
    let imageURL: URL?
    var participants: [String]
    var hosts: [String]
    var description: String
    
    init(id: String, name: String, startDate: Date, endDate: Date, location: String, category: String, imageURL: URL?, participants: [String], hosts: [String], description: String) {
        self.id = id
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        self.location = location
        self.category = category
        self.imageURL = imageURL
        self.participants = participants
        self.hosts = hosts
        self.description = description
    }
    
    convenience init?(dictionary: [String: Any]) {
        guard let id = dictionary["id"] as? String,
            let name = dictionary["name"] as? String,
            let startDate = dictionary["startDate"] as? Date,
            let endDate = dictionary["endDate"] as? Date,
            let location = dictionary["location"] as? String,
            let category = dictionary["category"] as? String,
            let participants = dictionary["participants"] as? [String],
            let hosts = dictionary["hosts"] as? [String],
            let description = dictionary["description"] as? String
            else {
                return nil
        }
        
        let imageURL = dictionary["imageURL"] as? URL
        
        self.init(id: id, name: name, startDate: startDate, endDate: endDate, location: location, category: category, imageURL: imageURL, participants: participants, hosts: hosts, description: description)
    }
    
    func toDictionary() -> [String: Any] {
        var dictionary: [String: Any] = [
            "id": id,
            "name": name,
            "startDate": startDate,
            "endDate": endDate,
            "location": location,
            "category": category,
            "participants": participants,
            "hosts": hosts,
            "description": description
        ]
        
        if let imageURL = imageURL {
            dictionary["imageURL"] = imageURL
        }
        
        return dictionary
    }
}


