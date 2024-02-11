//
//  ViewController.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/11.
//

import UIKit

class ViewController: UIViewController {
//    protocol越しにpresenterのメソッドを呼び出せる
    var presenter: ToDoListPresenterProtocol?
    var viewDatas = [TodoListViewData]() {
        didSet {
            self.ToDoTableView.reloadData()
        }
    }

    @IBOutlet weak var ToDoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ToDoTableView.dataSource = self
        self.ToDoTableView.delegate = self
        print(self.viewDatas.count)

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillApper()
    }


}
// ToDoListViewProtocolでのデータの設定
extension ViewController: ToDoListViewProtocol {
    func showToDos(_ todos: [TodoListViewData]) {
        self.viewDatas = todos
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todoId = self.viewDatas[indexPath.row].todoId
        self.presenter?.didSelectRow(todoId)
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableListviewCell else {
            print("Noting")
            return UITableViewCell()
        }
        cell.titleLabel?.text = self.viewDatas[indexPath.row].title
        cell.deadLineLabel.text = "\(self.viewDatas[indexPath.row].deadLine)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewDatas.count
    }
}


