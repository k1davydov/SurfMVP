//
//  MainViewController.swift
//  SurfMVP
//
//  Created by davydov-k on 07.02.2022.
//

import UIKit

final class MainViewController: UIViewController, ModuleTransitionable, MainViewInput {

    var presenter: MainViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter?.loaded()
    }

    func setup() {
        addButton()
    }

    private func addButton() {
        let button = UIButton()
        button.layer.cornerRadius = 10
        button.backgroundColor = .white
        button.setTitle("Show another screen", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
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
    private func buttonAction(_ sender: UIButton) {
        presenter?.pressed()
    }

    static func instanciateFromSB() -> UIViewController {
        return MainViewController()
    }

}
