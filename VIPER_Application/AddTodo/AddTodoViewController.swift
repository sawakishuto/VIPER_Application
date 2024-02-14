//
//  AddTodoViewController.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/14.
//

import UIKit
import SnapKit

class AddTodoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.height.equalTo(60)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
            make.top.equalTo(120)
        }
        view.addSubview(datePiker)
        datePiker.snp.makeConstraints { make in
            make.top.equalTo(200)
            make.centerX.equalToSuperview()
        }
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.size.equalTo(200)
            make.center.equalToSuperview()

        }
        view.addSubview(dateLabel)
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.centerX.equalToSuperview()
        }
        view.addSubview(completeButton)
        completeButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(datePiker.snp.bottom).offset(30)
        }
        }


    let datePiker: UIDatePicker = {
        let datepiker = UIDatePicker()
        datepiker.preferredDatePickerStyle = .automatic
        return datepiker
    }()
    lazy var completeButton: UIButton = {
        let completeButton = UIButton()
        completeButton.setTitle("時間確定", for: .normal)
        completeButton.backgroundColor = .brown
        completeButton.layer.cornerRadius = 15
        completeButton.addTarget(self, action: #selector(completeButtonTapped(_: )), for: .touchUpInside)
        return completeButton
    }()


    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ボタンを押したら変わるよ"
        label.textColor = .red
        return label
    }()


    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("表示しよ", for: .normal)
        button.addTarget(self, action: #selector(tappedButton(_: )), for: .touchUpInside)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 20
        return button
    }()


    lazy var dateLabel: UILabel = {
        let dateLabel = UILabel()
        dateLabel.text = "\(datePiker.date)"
        return dateLabel
    }()


//    func
    @objc func tappedButton(_ sender: UIButton) {
        self.label.textColor = .blue
        self.label.text = "ほら変わった！"
    }

    @objc func completeButtonTapped(_ sender: UIButton) {
        var settingDate = self.datePiker.date
        self.dateLabel.text = "\(settingDate)"
    }
}
#Preview("UIKit") {
    AddTodoViewController()
}
