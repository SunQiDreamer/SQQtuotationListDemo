//
//  SQLeftCell.swift
//  SQQuotationListDemo
//
//  Created by 孙琦 on 2018/7/29.
//  Copyright © 2018年 sunqi. All rights reserved.
//

import UIKit

class SQLeftCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    func customCell(data: Int) {
        nameLabel.text = "name_|\(data)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
