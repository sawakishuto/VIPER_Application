//
//  TodoDetailViewController.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

class TodoDetailViewController: UIViewController {

    @IBOutlet weak var BackButton: UIBarButtonItem!
    
    @IBAction func isNotCompleteButtonTapped(_ sender: UIButton) {
    }
    @IBOutlet weak var todoDetailTextView: UITextView!
    @IBOutlet weak var endTimeLabel: UILabel!
    @IBOutlet weak var deadLineLabel: UILabel!

    @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
    }
    

    override func viewDidLoad() {

    }

}
