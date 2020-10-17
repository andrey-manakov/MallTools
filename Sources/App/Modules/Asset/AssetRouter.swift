//
//  AssetRouter.swift
//  Asset
//
//  Created by Andrey Manakov on 17.10.2020.
//

import Vapor
import ViperKit

final class AssetRouter: ViperRouter {

    let controller = AssetFrontendController()

    func boot(routes: RoutesBuilder, app: Application) throws {

        routes.get("example", use: self.controller.exampleView)
    }
}
