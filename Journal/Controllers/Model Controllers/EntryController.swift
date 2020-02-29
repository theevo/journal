//
//  EntryController.swift
//  Journal
//
//  Created by Apple on 2/27/20.
//  Copyright © 2020 Jordan Crandell. All rights reserved.
//

import Foundation
class EntryController {
    
    // singleton
    static var sharedInstance = EntryController()
    
    // source of truth
    var entries: [Entry] = []
    
    // MARK: - CRUD functions
    
    func addEntryWith(title: String, text: String) {
        let entry: Entry = Entry(title: title, text: text)
        EntryController.sharedInstance.entries.append(entry)
    }
    
    
    func remove (entry: Entry){
        if let index = EntryController.sharedInstance.entries.firstIndex(of: entry) {
            EntryController.sharedInstance.entries.remove(at: index)
        }
                
    }
    
    func update (oldEntry: Entry, updatedTitle: String, updatedText: String) {
        if let index = EntryController.sharedInstance.entries.firstIndex(of: oldEntry) {
            oldEntry.title = updatedTitle
            oldEntry.text = updatedText
            EntryController.sharedInstance.entries[index] = oldEntry
        }
    }
    
    
}

