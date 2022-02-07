//
//  Configurator.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

final class Configurator {

    static func configure() -> ViewController {
        let view = ViewController()
        let presenter = Presenter()
        let router = Router()

        router.module = view
        router.presenter = presenter
        view.presenter = presenter
        presenter.view = view
        presenter.router = router

        return view
    }

}
