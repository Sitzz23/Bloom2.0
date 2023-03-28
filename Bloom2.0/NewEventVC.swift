//
//  NewEventVC.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 24/03/23.
//

import UIKit

class NewEventVC: UIViewController, UITableViewDataSource {
    
    var events: [Event] = []
    
    let tableView = UITableView(frame: .zero, style: .plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(EventCell.self, forCellReuseIdentifier: "eventCell")
        
        // Add the table view to the view hierarchy and set constraints
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        // Retrieve the events from the data model
        events = DataManager.shared.getAllEvents()
        
        // Reload the table view data to display the events
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath) as! EventCell
        
        let event = events[indexPath.row]
        cell.titleLabel.text = event.name
        
        cell.locationLabel.text = event.location
    
        return cell
    }
    
}

class EventCell: UITableViewCell {
    
    let titleLabel = UILabel()
    let dateLabel = UILabel()
    let locationLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Set up the cell UI components
        addSubview(titleLabel)
        addSubview(dateLabel)
        addSubview(locationLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            dateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            dateLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            
            locationLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 4),
            locationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            locationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            locationLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
        ])
        
        // Configure the UI component properties
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        dateLabel.font = UIFont.systemFont(ofSize: 14)
        locationLabel.font = UIFont.systemFont(ofSize: 14)
        
        dateLabel.textColor = .gray
        locationLabel.textColor = .gray
        
        // Ensure that the label text wraps onto multiple lines if necessary
        titleLabel.numberOfLines = 0
        dateLabel.numberOfLines = 0
        locationLabel.numberOfLines = 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
