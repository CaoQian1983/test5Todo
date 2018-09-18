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
    @IBOutlet weak var Btn: UIButton!
    var id = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if id == Int() {
        Btn.setTitle("add", for:  .normal)
        }else{
        Btn.setTitle("update", for: .normal)
            let seletedtodo = todo.getData(id: id)
            textField.text! = seletedtodo.title
        }
    }

    @IBAction func tapBtn(_ sender: UIButton) {
        //新規保存
        todo.create(title: textField.text!)
        
        //更新処理
        
      
        //navigationCotrollerを使ったときに元の画面に戻る書き方
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
