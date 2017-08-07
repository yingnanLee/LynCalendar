//
//  ViewController.swift
//  lynCa
//
//  Created by liyingnan on 2017/8/4.
//  Copyright © 2017年 李英男. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calendarButton : UIButton {
    
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 300, height: 50))
        button.backgroundColor = UIColor.lightGray.withAlphaComponent(0.2)
        button.setTitle("日期选择", for: .normal)
        button.addTarget(self, action: #selector(handleCalendarAction(button:)), for: .touchUpInside)
        button.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(button)

        return button
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        self.calendarButton.setTitle("ww", for: .normal)
    }


    func handleCalendarAction(button : UIButton) {
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

