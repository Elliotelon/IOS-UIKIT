//
//  ViewController.swift
//  IOS-UIKIT
//
//  Created by 김민규 on 1/2/26.
//

import UIKit

class ViewController: UIViewController {

    // button
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
    
    // Label
    private let centerLabel: UILabel = {
        
        let label = UILabel()
        label.text = "중앙 레이블"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // ImageView
    private let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(systemName: "photo.artframe")
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        iv.tintColor = .systemBlue
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        return iv
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
            view.addSubview(centerButton)
            view.addSubview(centerLabel)
            view.addSubview(imageView)
            
            // button 오토레이아웃 설정
            NSLayoutConstraint.activate([
                centerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                centerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                centerButton.widthAnchor.constraint(equalToConstant: 200),
                centerButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        
            // Label 오토레이아웃 설정
            NSLayoutConstraint.activate([
                centerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                centerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                centerLabel.widthAnchor.constraint(equalToConstant: 200),
                centerLabel.heightAnchor.constraint(equalToConstant: 50)
            ])
        
            // ImageView 오토레이아웃 설정
            NSLayoutConstraint.activate([
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                imageView.widthAnchor.constraint(equalToConstant: 200),
                imageView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }


}

