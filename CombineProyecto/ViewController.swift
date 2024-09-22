//
//  ViewController.swift
//  CombineProyecto
//
//  Created by Jesus Alberto Diaz Dominguez on 21/09/24.
//

import UIKit
import Combine


class ViewController: UIViewController {
    
    private let combineView: CombineBasicTwo = {
        let view: CombineBasicTwo = CombineBasicTwo()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubViewCustom()
        setupAutolayout()
        // Do any additional setup after loading the view.
    }
    func addSubViewCustom() {
        view.addSubview(combineView)
    }
    func setupAutolayout() {
        NSLayoutConstraint.activate([
            combineView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            combineView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            combineView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            combineView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    //forma uno de suscribirse a publisher
   


}

