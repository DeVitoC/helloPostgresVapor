//
//  File.swift
//  
//
//  Created by Christopher Devito on 8/14/20.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateMovie: Migration {
    // Create, add, change database
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies")
            .id()
            .field("title", .string)
            .create()
    }

    // Undo method
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("movies").delete()
    }
}
