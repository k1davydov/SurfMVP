//
//  SecondConfigurator.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

final class SecondConfigurator {
//change to Module output
    static func configure(output: MainModuleOutput?) -> (controller: SecondController, input: SecondModuleInput) {
        let view = SecondController()
        let presenter = SecondPresenter()

        view.presenter = presenter
        presenter.view = view
        presenter.mainPresenter = output

        return (view, presenter)
    }
}
