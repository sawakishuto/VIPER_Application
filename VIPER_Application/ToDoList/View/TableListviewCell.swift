//
//  TableListviewCell.swift
//  VIPER_Application
//
//  Created by 澤木柊斗 on 2024/02/12.
//

import Foundation
import UIKit

 class TableListviewCell: UITableViewCell {

     @IBOutlet weak var titleLabel: UILabel!
     @IBOutlet weak var deadLineLabel: UILabel!
     override func awakeFromNib() {
         super.awakeFromNib()
     }
     override func setSelected(_ selected: Bool, animated: Bool) {
     }
 }
