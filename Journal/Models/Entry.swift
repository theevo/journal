//
//  Entry.swift
//  Journal
//
//  Created by Apple on 2/27/20.
//  Copyright © 2020 Jordan Crandell. All rights reserved.
//

import Foundation

class Entry {
    var timeStamp: Date
    var journalTitle: String
    var text: String
    
    init(title: String, text: String) {
        timeStamp = Date()
        self.journalTitle = title
        self.text = text
    }
}

extension Entry: Equatable {
    static func == ( lhs: Entry, rhs: Entry) -> Bool {
        return lhs.timeStamp == rhs.timeStamp &&
            lhs.journalTitle == rhs.journalTitle &&
            lhs.text == rhs.text
    }
}
