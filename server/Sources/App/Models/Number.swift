//
//  File.swift
//  
//
//  Created by Ilya Gruzdev on 05.03.2022.
//

import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

final class Number: Model, Content {
    
    static let schema = "numbers"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "number")
    var number: Int
    
    init() {}
    
    init(id: UUID? = nil, number: Int) {
        self.id = id
        self.number = number
    }
}
