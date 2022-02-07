//
//  Router.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class Router: NSObject, RouterInput {

    weak var module: ModuleTransitionable?
    weak var presenter: ModuleOutput?

    func showSecondModule() {
        let vc = SecondConfigurator.configure(mainPresenter: presenter)
        module?.showModule(vc)
    }

}
