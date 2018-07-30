//
//  SQRightCell.swift
//  SQQuotationListDemo
//
//  Created by 孙琦 on 2018/7/29.
//  Copyright © 2018年 sunqi. All rights reserved.
//

import UIKit

class SQRightCell: UITableViewCell {

    func customCell(data: Int) {
        for (index, label) in (self.contentView.subviews.first?.subviews.enumerated())! {
            (label as! UILabel).text = "label:\(data)-\(index)"
        }
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
