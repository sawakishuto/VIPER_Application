//
//  TodoDetailViewController.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

class TodoDetailViewController: UIViewController {

    static func instantiate() -> TodoDetailViewController {
        let storybord = UIStoryboard(name: "TodoDetailView", bundle: nil) 
        let view = storybord.instantiateViewController(identifier: "TodoDetailView") as? TodoDetailViewController
        return view ?? TodoDetailViewController()
    }

    var viewData = TodoDetailViewData(todoId: 0, title: "", detail: "", isCompleted: false, deadLine: Date()) {
        didSet {
            self.detailNavigationTitle.title = viewData.title
            self.deadLineLabel?.text = "\(viewData.deadLine)"
            self.todoDetailTextView?.text = viewData.detail
            self.isCompleteLabel.text = viewData.isCompleted ? "完了": "未完了"

        }
    }
    var presenter: TodoDetailPresenterProtocol?
    @IBOutlet weak var detailNavigationTitle: UINavigationItem!
    @IBOutlet weak var DetailNavigationBar: UINavigationBar!
    @IBOutlet weak var BackButton: UIBarButtonItem!
    @IBOutlet weak var todoDetailTextView: UITextView!
    @IBOutlet weak var endTimeLabel: UILabel!
    @IBOutlet weak var deadLineLabel: UILabel!
    @IBAction func TappedBackView(_ sender: UIBarButtonItem) {}
    @IBAction func isNotCompleteButtonTapped(_ sender: UIButton) {}
    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {}
    @IBOutlet weak var isCompleteLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.presenter?.viewWillApper()
    }

}
extension TodoDetailViewController: TodoDetailViewProtocol {

    func showDetail(_ todo: TodoDetailViewData) {
        self.viewData = todo
    }
    

}
