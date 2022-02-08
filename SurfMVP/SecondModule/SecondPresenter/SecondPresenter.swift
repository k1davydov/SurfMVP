//
//  SecondPresenter.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class SecondPresenter: NSObject, SecondViewOutput, SecondModuleInput {

    weak var mainPresenter: MainModuleOutput?

    weak var view: SecondViewInput?

    func loaded() {
        view?.setup()
    }

    func pressed() {
        mainPresenter?.canClose()
    }

    func dismiss() {
        view?.dismiss()
    }

}
