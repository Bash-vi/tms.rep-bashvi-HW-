//
//  ViewController.swift
//  HW2AppFriday
//
//  Created by Вячеслав Башур on 08/06/2024.
//

import UIKit

class ViewController: UIViewController {

   
    
    
    @IBOutlet weak var text: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var labeldays: UILabel!
    
    var numweek: String = ""
    //я понимаю что мне нужно переменную dni прязать к UITextField! а переменную numweek привязать к UILabel! не понимаю как это сделать
    //почему привязывая кнопку сверху пишет @IBOutlet weak var а снизу другое 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionbutton(_ sender: Any) {
        
        
        func dayweek(day:Int) -> String {
            return "\(6 - day)"
        }
       
        
        switch text.text {
        case "Понедельник":
            numweek = "Осталось \(dayweek(day: 1)) дней до выходного"
        case "Вторник":
            numweek = "Осталось \(dayweek(day: 2)) дней до выходного"
        case "Среда":
            numweek = "Осталось \(dayweek(day: 3)) дней до выходного"
        case "Четверг":
            numweek = "Осталось \(dayweek(day: 4)) дней до выходного"
        case "Пятница":
            numweek = "Осталось \(dayweek(day: 5)) дней до выходного"
        default:
            numweek = "Осталось \(dayweek(day: 6)) дней"
        }
        labeldays.text = numweek
    }
    
}

