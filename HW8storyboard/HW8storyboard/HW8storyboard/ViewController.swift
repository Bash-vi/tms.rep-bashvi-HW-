//
//  ViewController.swift
//  HW8storyboard
//
//  Created by Вячеслав Башур on 25/06/2024.
//

import UIKit

class ViewController: UIViewController {
    lazy var namePageLable = UILabel()
    lazy var nextPageLable = UILabel()
    lazy var PasswordTextField = UITextField()
    lazy var PasswordLaibel = UILabel()
    lazy var UserNameTextField = UITextField()
    lazy var UserNameLable = UILabel()
    lazy var LoginInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(namePageLable)
        view.addSubview(nextPageLable)
        view.addSubview(PasswordTextField)
        view.addSubview(PasswordLaibel)
        view.addSubview(LoginInButton)
        view.addSubview(UserNameTextField)
        view.addSubview(UserNameLable)
        
        namePageLable.text = "My Home Control"
        namePageLable.translatesAutoresizingMaskIntoConstraints = false
        namePageLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        namePageLable.font = .systemFont(ofSize: 35)
        namePageLable.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
       
        UserNameLable.translatesAutoresizingMaskIntoConstraints = false
        UserNameLable.text = "Username"
        UserNameLable.bottomAnchor.constraint(equalTo: UserNameTextField.topAnchor).isActive = true
        UserNameLable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        UserNameLable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        
        UserNameTextField.placeholder = "Please enter username"
        UserNameTextField.translatesAutoresizingMaskIntoConstraints = false
        UserNameTextField.topAnchor.constraint(equalTo: namePageLable.bottomAnchor, constant: 150).isActive = true
        UserNameTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        UserNameTextField.backgroundColor = .lightGray
        UserNameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        UserNameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        
        PasswordLaibel.translatesAutoresizingMaskIntoConstraints = false
        PasswordLaibel.text = "Password"
        PasswordLaibel.topAnchor.constraint(equalTo: UserNameTextField.bottomAnchor, constant: 20).isActive = true
        PasswordLaibel.bottomAnchor.constraint(equalTo: PasswordTextField.topAnchor).isActive = true
        PasswordLaibel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        PasswordLaibel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        
        PasswordTextField.placeholder = "Please enter password"
        PasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        PasswordTextField.topAnchor.constraint(equalTo: PasswordLaibel.bottomAnchor, constant: 150).isActive = true
        PasswordTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        PasswordTextField.backgroundColor = .lightGray
        PasswordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        PasswordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -40).isActive = true
        
        LoginInButton.setTitle("Log in", for: .normal)
        LoginInButton.backgroundColor = .lightGray
        LoginInButton.setTitleColor(.black, for: .normal)
        LoginInButton.translatesAutoresizingMaskIntoConstraints = false
        LoginInButton.topAnchor.constraint(equalTo: PasswordLaibel.bottomAnchor, constant: 100).isActive = true
        LoginInButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        LoginInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 120).isActive = true
        LoginInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -120).isActive = true
        
        nextPageLable.translatesAutoresizingMaskIntoConstraints = false
        nextPageLable.text = "Register"
        nextPageLable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -35).isActive = true
        nextPageLable.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        // Do any additional setup after loading the view.
    }


}

