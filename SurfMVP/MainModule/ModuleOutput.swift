//
//  ModuleOutput.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

protocol ModuleOutput: NSObject {

    func canClose()
    func setSecondPresenter(_ presenter: SecondModuleInput?)

}
