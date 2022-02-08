//
//  MainRouter.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class MainRouter: NSObject, MainRouterInput {

    weak var module: ModuleTransitionable?
    weak var presenter: MainModuleOutput?
    weak var input: SecondModuleInput?

    func showSecondModule() {
        let (module, input) = SecondConfigurator.configure(output: presenter)
        self.module?.showModule(module)
        self.input = input
    }

    func dismissSecondModule() {
        input?.dismiss()
    }

}
