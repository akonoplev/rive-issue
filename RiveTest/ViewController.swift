//
//  ViewController.swift
//  RiveTest
//
//  Created by Андрей Коноплев on 18.12.2023.
//

import RiveRuntime
import UIKit

class ViewController: UIViewController {


    private let riveViewModel = RiveViewModel(
        fileName: "tabbar_icon_main",
        fit: .fill,
        alignment: .center,
        autoPlay: false
    )

    private lazy var riveView: RiveView = {
        let view = riveViewModel.createRiveView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(riveView)

        riveView.translatesAutoresizingMaskIntoConstraints = false

            // Create constraints to center the riveView horizontally and vertically
            NSLayoutConstraint.activate([
                riveView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                riveView.centerYAnchor.constraint(equalTo: view.centerYAnchor),

                // Set the size of the riveView to be 44x44
                riveView.widthAnchor.constraint(equalToConstant: 44),
                riveView.heightAnchor.constraint(equalToConstant: 44)
            ])

        riveViewModel.play()
    }
}

