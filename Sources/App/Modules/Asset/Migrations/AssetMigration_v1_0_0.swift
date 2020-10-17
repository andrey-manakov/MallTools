//
//  AssetMigration_v1_0_0.swift
//  Asset
//
//  Created by Andrey Manakov on 17.10.2020.
//

import Vapor
import Fluent

struct AssetMigration_v1_0_0: Migration {

    func prepare(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            db.schema(AssetModel.schema)
                .id()
                .field(AssetModel.FieldKeys.example, .string, .required)
                .unique(on: AssetModel.FieldKeys.example)
                .create(),
        ])
    }

    func revert(on db: Database) -> EventLoopFuture<Void> {
        db.eventLoop.flatten([
            db.schema(AssetModel.schema).delete(),
        ])
    }
}
