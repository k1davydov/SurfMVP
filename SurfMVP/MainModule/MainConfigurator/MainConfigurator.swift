//
//  MainConfigurator.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

final class MainConfigurator {

    static func configure() -> MainViewController {
        let view = MainViewController()
        let presenter = MainPresenter()
        let router = MainRouter()

        router.module = view
        router.presenter = presenter
        view.presenter = presenter
        presenter.view = view
        presenter.router = router

        return view
    }

}
