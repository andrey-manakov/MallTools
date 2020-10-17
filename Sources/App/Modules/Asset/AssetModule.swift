//
//  AssetModule.swift
//  Asset
//
//  Created by Andrey Manakov on 17.10.2020.
//

import Vapor
import Fluent
import ViperKit

final class AssetModule: ViperModule {

    static var name: String = "example"

    var router: ViperRouter? { AssetRouter() }

    var migrations: [Migration] {
        [
            AssetMigration_v1_0_0(),
        ]
    }
}
