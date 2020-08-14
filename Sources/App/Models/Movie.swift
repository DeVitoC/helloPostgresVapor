//
//  File.swift
//  
//
//  Created by Christopher Devito on 8/14/20.
//

import Foundation
import Fluent
import Vapor

final class Movie: Model, Content {

    static let schema = "movies" // Name of the table

    @ID(key: .id) // Sets property as Primary Key
    var id: UUID?

    @Field(key: "title")
    var title: String

    init() {}

    init(id: UUID? = nil, title: String) {
        self.id = id
        self.title = title
    }
}
