//
//  page2ViewController.swift
//  HW9viewController
//
//  Created by Вячеслав Башур on 29/06/2024.
//

import UIKit
import SnapKit

class page2ViewController: UIViewController {
    lazy var lable = UILabel()
    lazy var boxlaibel = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = "любой UILabel по центру экрана"
        boxlaibel.addSubview(lable)
        view.addSubview(boxlaibel)
        boxlaibel.snp.makeConstraints{
            $0.center.equalTo(view.snp.center)
            $0.width.height.equalTo(300)
        }
        lable.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
        view.backgroundColor = .systemGray
        boxlaibel.layer.cornerRadius = 150
        boxlaibel.layer.borderWidth = 3.5
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
