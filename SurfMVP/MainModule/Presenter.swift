//
//  Presenter.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class Presenter: NSObject, ViewOutput, ModuleOutput {

    weak var view: ViewInput?
    weak var secondPresenter: SecondModuleInput?

    var router: RouterInput?

    func loaded() {
        view?.setup()
    }

    func pressed() {
        router?.showSecondModule()
    }

    func setSecondPresenter(_ presenter: SecondModuleInput?) {
        secondPresenter = presenter
    }

    func canClose() {
        secondPresenter?.dismiss()
    }

}
