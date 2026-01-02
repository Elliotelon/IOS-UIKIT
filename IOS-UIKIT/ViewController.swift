//
//  ViewController.swift
//  IOS-UIKIT
//
//  Created by 김민규 on 1/2/26.
//

import UIKit

class ViewController: UIViewController {

    // 1. 클로저 패턴으로 버튼 선언 및 설정.
        private let centerButton: UIButton = {
            // iOS 15+ 스타일 설정
            var config = UIButton.Configuration.filled()
            config.title = "중앙 버튼"
            config.baseBackgroundColor = .systemBlue
            config.cornerStyle = .capsule
            
            let button = UIButton(configuration: config)
            
            // Auto Layout을 사용하기 위해 필수 설정
            button.translatesAutoresizingMaskIntoConstraints = false
            
            // 클릭 이벤트 연결 (클로저 방식)
            button.addAction(UIAction { _ in
                print("중앙 버튼 클릭됨")
            }, for: .touchUpInside)
            
            return button
        }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
            view.addSubview(centerButton)
            
            // 오토레이아웃 설정
            NSLayoutConstraint.activate([
                centerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                centerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                centerButton.widthAnchor.constraint(equalToConstant: 200),
                centerButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }


}

