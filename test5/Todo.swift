
import Foundation
import RealmSwift

//データ新規登録、取得、更新、削除

class Todo : Object {
    //カラム名を決める
    @objc dynamic var id = Int()
    @objc dynamic var title = String()
    @objc dynamic var date = String()
    
    var list = [NSDictionary]()

    //新規登録
    func create (title: String){
        let realm = try! Realm()
    //データの書き込み
    try! realm.write {
    let todo = Todo()
    let now = Date()
    let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
       //入力したデータを次に追加して表示
        todo.id = (realm.objects(Todo.self).max(ofProperty: "id") as Int? ?? 0) + 1
        todo.title = title
        todo.date = formatter.string(from: now as Date)
        realm.add(todo)
    }
}
}
    //取得
    //更新
    //削除
