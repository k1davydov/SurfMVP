//
//  MainPresenter.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class MainPresenter: NSObject, MainViewOutput, MainModuleOutput {

    weak var view: MainViewInput?

    var router: MainRouterInput?

    func loaded() {
        view?.setup()
    }

    func pressed() {
        router?.showSecondModule()
    }

    func canClose() {
        router?.dismissSecondModule()
    }

}
