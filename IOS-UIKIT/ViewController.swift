//
//  ViewController.swift
//  IOS-UIKIT
//
//  Created by 김민규 on 1/2/26.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let example = UIViewExample()
        
        example.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(example)
        
        NSLayoutConstraint.activate([
            example.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            example.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            example.widthAnchor.constraint(equalToConstant: 200),
            example.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
}

