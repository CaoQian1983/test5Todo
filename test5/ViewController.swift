//
//  ViewController.swift
//  test5
//
//  Created by CaoQian on 2018/08/29.
//  Copyright © 2018 CaoQian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    //一覧表示のため
    override func viewWillAppear(_ animated: Bool) {
        <#code#>
    }
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int
    {
        return 10
    }
    //セル中身を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = "タスク"
            return cell
    }
}

