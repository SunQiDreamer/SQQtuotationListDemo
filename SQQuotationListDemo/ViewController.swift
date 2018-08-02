//
//  ViewController.swift
//  SQQuotationListDemo
//
//  Created by 孙琦 on 2018/7/29.
//  Copyright © 2018年 sunqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftTableView: UITableView!
    @IBOutlet weak var rightTableView: UITableView!
    
    let leftCellId = (NSStringFromClass(SQLeftCell.self as AnyClass) as NSString).components(separatedBy: ".").last
    let rightCellId = (NSStringFromClass(SQRightCell.self as AnyClass) as NSString).components(separatedBy: ".").last
    let addOptionView = UIView(frame: CGRect(x: 0, y: 5 * 44, width: 375, height: 50))
    var lastContentoffSetY: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addOptionView.backgroundColor = UIColor.red
        
        view.addSubview(addOptionView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        if tableView == leftTableView {
            cell = tableView.dequeueReusableCell(withIdentifier: leftCellId!, for: indexPath)
            (cell as! SQLeftCell).customCell(data: indexPath.row)
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: rightCellId!, for: indexPath)
            
            (cell as! SQRightCell).customCell(data: indexPath.row)
        }
        
        return cell ?? UITableViewCell()
    }
    
    //MARK:-
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentoffSetY = scrollView.contentOffset.y
        
        leftTableView.contentOffset.y = contentoffSetY
        rightTableView.contentOffset.y = contentoffSetY
        
        if scrollView == self.leftTableView {
            addOptionView.frame = CGRect.offsetBy(addOptionView.frame)(dx: 0, dy: -contentoffSetY + lastContentoffSetY)
        }
        lastContentoffSetY = contentoffSetY
    }
    
    
}

