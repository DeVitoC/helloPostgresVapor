//
//  File.swift
//  
//
//  Created by Christopher Devito on 8/14/20.
//

import Foundation
import Fluent
import FluentPostgresDriver
import Vapor

final class Review: Model, Content {

    static let schema = "reviews"

    @ID(key: .id) // Primary Key
    var id: UUID?

    @Field(key: "title")
    var title: String

    @Field(key: "body")
    var body: String

    // belongs to - review belongs to a movie
    @Parent(key: "movie_id") // Foriegn Key
    var movie: Movie

    init() {}

    init(id: UUID? = nil, title: String, body: String, movieId: UUID) {
        self.id = id
        self.title = title
        self.body = body
        self.$movie.id = movieId
    }
}

