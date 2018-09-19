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
       //テキストフィールドが空だった場合
        if textField.text! == "" {
    //アラートを表示してあげる,returnは処理を終わる、while文の中に、繰り返し処理をいやめる場合はbreak,段階を途中でスキップ処理の場合はcontinueを利用
            return
            
        }
        //新規保存
        if id == Int() {
        todo.create(title: textField.text!)
        }else{
            todo.update(id: id, title: textField.text!)
        }
        
        //更新処理
        
      
        //navigationCotrollerを使ったときに元の画面に戻る書き方
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
