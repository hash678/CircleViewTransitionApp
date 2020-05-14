//
//  ViewController.swift
//  CircleViewTransitionApp
//
//  Created by Hassan Abbasi on 14/05/2020.
//  Copyright © 2020 Hassan Abbasi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var secondView:UIView = {
          let v = UIView()
          let l = UILabel()
          l.text = "MY LABEL"
          l.translatesAutoresizingMaskIntoConstraints = false
          v.addSubview(l)
          l.textColor = .blue
          l.centerXAnchor.constraint(equalTo: v.centerXAnchor).isActive = true
          l.centerYAnchor.constraint(equalTo: v.centerYAnchor).isActive = true
        v.backgroundColor = .green
          
          return v
      }()
    
    
      var buttonView:UIView = {
          let b = UIView()
          b.translatesAutoresizingMaskIntoConstraints = false
          b.backgroundColor = .yellow
          b.layer.cornerRadius = 5
          return b
      }()
    let transitionView = TransitionView()


    
    lazy var firstView:UIView = {
          let v = UIView()
            v.translatesAutoresizingMaskIntoConstraints = false
          return v
      }()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        transitionView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(transitionView)
        transitionView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        transitionView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        transitionView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.75).isActive = true
        transitionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        transitionView.addSubview(buttonView)
     
        transitionView.layer.cornerRadius = 15
        transitionView.backgroundColor = .systemPink
        
        
        buttonView.widthAnchor.constraint(equalTo: transitionView.widthAnchor, multiplier: 0.8).isActive = true
                    buttonView.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
                    buttonView.bottomAnchor.constraint(equalTo: transitionView.bottomAnchor,constant: -8).isActive = true
                    buttonView.centerXAnchor.constraint(equalTo: transitionView.centerXAnchor).isActive = true
            secondView.backgroundColor = buttonView.backgroundColor!
        buttonView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateView)))
      
    }

    @objc fileprivate func animateView(){
        transitionView.animate(view: secondView, fromView: buttonView)
          
    }

}

