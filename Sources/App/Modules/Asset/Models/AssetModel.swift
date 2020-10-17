//
//  AssetModel.swift
//  Asset
//
//  Created by Andrey Manakov on 17.10.2020.
//

import Vapor
import Fluent
import ViperKit

final class AssetModel: ViperModel {
    typealias Module = AssetModule

    static let name = "examples"

    struct FieldKeys {
        static var example: FieldKey { "example" }
    }

    // MARK: - fields

    @ID() var id: UUID?
    @Field(key: FieldKeys.example) var example: String

    init() { }

    init(id: AssetModel.IDValue? = nil,
         example: String)
    {
        self.id = id
        self.example = example
    }
}
