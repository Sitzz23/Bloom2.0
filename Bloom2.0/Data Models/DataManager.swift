//import Foundation
//import Firebase
//
//class DataManager {
//
//    static let shared = DataManager()
//    private let databaseRef = Database.database().reference()
//
//    func getAllEvents(completion: @escaping ([Event]) -> Void) {
//        databaseRef.child("events").observeSingleEvent(of: .value) { (snapshot) in
//            guard let eventsData = snapshot.value as? [[String: Any]] else {
//                completion([])
//                return
//            }
//
//            var events: [Event] = []
//            for eventData in eventsData {
//                if let event = Event(dictionary: eventData) {
//                    events.append(event)
//                }
//            }
//            completion(events)
//        }
//    }
//
//    func addEvent(_ event: Event) {
//        let eventRef = databaseRef.child("events").childByAutoId()
//        eventRef.setValue(event.toDictionary())
//    }
//
//
//}

import Foundation
import Firebase

class DataManager {
    
    static let shared = DataManager()
    
    private let db = Firestore.firestore()
    
    private init() {}
    
    // MARK: - Events
    
    func fetchEvents(for category: String?, completion: @escaping ([Event]?, Error?) -> Void) {
        var query: Query = db.collection("events")
        
        if let category = category {
            query = query.whereField("category", isEqualTo: category)
        }
        
        query.getDocuments { (snapshot, error) in
            guard let snapshot = snapshot else {
                completion(nil, error)
                return
            }
            
            let events = snapshot.documents.compactMap { (document) -> Event? in
                guard let data = document.data() as? [String: Any] else { return nil }
                
                return Event(dictionary: data)
            }
            
            completion(events, nil)
        }
    }
    
    func addEvent(_ event: Event, completion: @escaping (Error?) -> Void) {
        let document = db.collection("events").document(event.id)
        document.setData(event.toDictionary()) { (error) in
            completion(error)
        }
    }
    
    func updateEvent(_ event: Event, completion: @escaping (Error?) -> Void) {
        let document = db.collection("events").document(event.id)
        document.updateData(event.toDictionary()) { (error) in
            completion(error)
        }
    }
    
    func deleteEvent(_ event: Event, completion: @escaping (Error?) -> Void) {
        let document = db.collection("events").document(event.id)
        document.delete() { (error) in
            completion(error)
        }
    }
    
    // MARK: - Users
    
    // Add methods for managing user data, as needed.
    
}
