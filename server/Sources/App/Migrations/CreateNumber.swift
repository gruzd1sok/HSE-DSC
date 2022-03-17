//
//  File.swift
//  
//
//  Created by Ilya Gruzdev on 05.03.2022.
//

import Foundation
import Fluent
import FluentPostgresDriver

struct CreateNumber: Migration {
    
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        
        database.schema("numbers")
            .id()
            .field("number", .int)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("numbers").delete()
    }
}
