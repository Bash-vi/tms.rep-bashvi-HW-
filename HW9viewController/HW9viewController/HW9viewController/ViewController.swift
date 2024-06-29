//
//  ViewController.swift
//  HW9viewController
//
//  Created by Вячеслав Башур on 29/06/2024.
//

//Создать UITabBarController с двумя табами.
//Сделать переход через navigationController на 2 экрана вперед на первом табе.
//На втором табе будет ViewController с любым UILabel по центру экрана.

import UIKit


class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let somevc = UIViewController()
        somevc.view.backgroundColor = .blue
        let somevc1 = UIViewController()
        somevc1.view.backgroundColor = .cyan
        view.backgroundColor = .systemGray
        navigationController?.pushViewController(somevc, animated: true)
        navigationController?.pushViewController(somevc1, animated: true)
        
        
        
        // Do any additional setup after loading the view.
    }


}

