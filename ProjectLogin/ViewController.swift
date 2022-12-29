//
//  ViewController.swift
//  ProjectLogin
//
//  Created by Liliana Porto Abdala on 27/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblKey: UILabel!
    @IBOutlet var email: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
     super.viewDidLoad()
        view.backgroundColor = .black
        
        
        email = UITextField()
        email.frame = CGRect(x: 50, y: 400, width: 300, height: 40)
        email.backgroundColor = .white
        email.layer.borderWidth = 2
        email.layer.borderColor = UIColor.systemGray.cgColor
        view.addSubview(email)
    
        password = UITextField()
        password.frame = CGRect(x: 50, y: 460, width: 300, height: 40)
        password.backgroundColor = .white
        view.addSubview(password)
        
        let button = UIButton()
        button.setTitle("Entrar", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .systemPurple
        button.setTitleColor(.white, for: .normal)
        button.frame = CGRect(x: 100, y: 605, width: 200, height: 50)
        button.layer.cornerRadius = 25
        
        let button2 = UIButton()
        button2.setTitle("Criar Conta", for: .normal)
        view.addSubview(button2)
        button2.backgroundColor = .systemPurple
        button2.setTitleColor(.white, for: .normal)
        button2.frame = CGRect(x: 100, y: 670, width: 200, height: 50)
        button2.layer.cornerRadius = 25
        button2.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        lblKey = UILabel()
        lblKey.frame = CGRect(x: 100, y: 720, width: 200, height: 50)
        lblKey.text = "Esqueci minha senha"
        lblKey.textColor = .systemPurple
        lblKey.textAlignment = .center
        view.addSubview(lblKey)
        
    }
    @objc private func didTapButton(){
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        present(navVC, animated: true)
    }


}


