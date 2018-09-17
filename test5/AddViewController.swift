//
//  AddViewController.swift
//  test5
//
//  Created by CaoQian on 2018/09/17.
//  Copyright © 2018 CaoQian. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    let todo = Todo()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        //新規保存
        todo.create(title: textField.text!)
       //navigationCotrollerを使ったときに元の画面に戻る書き方
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
