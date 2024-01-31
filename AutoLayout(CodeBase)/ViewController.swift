//
//  ViewController.swift
//  AutoLayout(CodeBase)
//
//  Created by Jamong on 1/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    // let's avoid poulluting viewDidLoad
    // {} is referred to as closure, or anon. functions
    
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first.png") )
        
        // autoresizingMask는 superview가 변함에 따라 subview의 크기를 어떻게 할 것인지에 대한 클래스로
        // autolayout에서 같이 사용된다면 충돌이 날 수 있어, 충돌 방지를 위해 Autoresizing을 사용하지 않는 것으로 선언
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Joun us today in our fun add games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
         
        // imageView를 클로저로 만들어서 사용(위에)
//        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first.png"))
//        view.addSubview(imageView)
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
//        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
        setupLayout()
        
    }
    
    private func setupLayout() {
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
}

