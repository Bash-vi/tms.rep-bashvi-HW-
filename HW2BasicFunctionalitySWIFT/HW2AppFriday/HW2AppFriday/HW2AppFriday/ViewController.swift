//
//  ViewController.swift
//  HW2AppFriday
//
//  Created by Вячеслав Башур on 08/06/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leibel: UILabel!
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var button: UIButton!
  
    let pn:Int = 1
    let wt = 2
    let sr = 3
    let cht = 4
    let pt = 5
    let weeknd = 6

    //я понимаю что мне нужно переменную dni прязать к UITextField! а переменную numweek привязать к UILabel! не понимаю как это сделать
    //почему привязывая кнопку сверху пишет @IBOutlet weak var а снизу другое 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionbutton(_ sender: Any) {
        
        var dni = Field.text

        var numweek: Int
        switch dni {
        case "Понедельник":
            numweek = weeknd - pn
        case "Вторник":
            numweek = weeknd - wt
        case "Среда":
            numweek = weeknd - sr
        case "Четверг":
            numweek = weeknd - cht
        case "Пятница":
            numweek = weeknd - pt
        default:
            numweek = weeknd - weeknd
        }
        
    }
    
}

