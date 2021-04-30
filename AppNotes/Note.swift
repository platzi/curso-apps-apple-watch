//
//  Note.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 29/04/21.
//

import Foundation

struct Note: Codable, Identifiable{
    let id: UUID
    let title: String
    var creationDate: String
    
    init(title: String){
        self.id = UUID()
        self.title = title
        
        // lets now working with dates
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .medium
        self.creationDate = dateFormatter.string(from: date)
    }
    
}
