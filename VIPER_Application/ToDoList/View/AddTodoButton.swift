//
//  AddTodoButton.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/14.
//

import UIKit

class AddTodoButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        let addGestureReco: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(TappedImageView))
        addGestureRecognizer(addGestureReco)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func TappedImageView() {

    }

}
