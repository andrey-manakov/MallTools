//
//  AssetFrontendController.swift
//  Asset
//
//  Created by Andrey Manakov on 17.10.2020.
//

import Vapor
import Fluent

final class AssetFrontendController {

    func exampleView(req: Request) throws -> EventLoopFuture<View> {
        struct Context: Encodable {
            let foo: String
        }
        let context = Context(foo: "This is just an example")
        return req.view.render("Asset/Frontend/Example", context)
    }

}
