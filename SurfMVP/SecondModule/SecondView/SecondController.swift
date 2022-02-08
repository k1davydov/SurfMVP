//
//  SecondController.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class SecondController: UIViewController, ModuleTransitionable, SecondViewInput {

    var presenter: SecondViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.loaded()
    }

    func setup() {
        setupInitialState()
    }

    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }

    private func setupInitialState() {
        view.backgroundColor = .white

        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .systemRed
        button.setTitle("Dismiss", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector (buttonAction), for: .touchUpInside)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }

    @objc
    private func buttonAction() {
        presenter?.pressed()
    }

}
