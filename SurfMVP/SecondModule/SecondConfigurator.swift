//
//  SecondConfigurator.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

final class SecondConfigurator {

    static func configure(mainPresenter: ModuleOutput?) -> SecondController {
        let view = SecondController()
        let presenter = SecondPresenter()

        view.presenter = presenter
        presenter.view = view
        presenter.mainPresenter = mainPresenter

        return view
    }
}
