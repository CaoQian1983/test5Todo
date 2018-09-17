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
    let todo = Todo()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    //一覧表示のため
    override func viewWillAppear(_ animated: Bool) {
        todo.list.removeAll()
        todo.getAll()
        tableView.reloadData()
    }
    //行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section : Int) -> Int
    {
        return todo.list.count
    }
    //セル中身を決める
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = todo.list[indexPath.row]["title"] as? String
            return cell
    }
}

