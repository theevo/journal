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
    var title: String
    var text: String
    init(title: String, text: String) {
        timeStamp = Date()
        self.title = title
        self.text = text
    }
}

extension Entry: Equatable {
    static func == ( lhs: Entry, rhs: Entry) -> Bool {
        return lhs.timeStamp == rhs.timeStamp &&
            lhs.title == rhs.title &&
            lhs.text == rhs.text
    }
}
