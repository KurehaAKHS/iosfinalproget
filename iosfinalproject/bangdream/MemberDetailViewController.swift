//
//  MemberDetailViewController.swift
//  bangdream
//
//  Created by user_06 on 2017/6/20.
//  Copyright © 2017年 user_10. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController {
    var detail = ""
    var detailString = ["Swift程式設計入門，App程式設計入門作者，彼得潘的iOS App程式設計入門，文組生的iOS App程式設計入門講師","情歌王子彼得潘 超帥der"]
    @IBOutlet weak var bEditDetail:UIBarButtonItem!
    @IBOutlet weak var detailText:UILabel!
    @IBOutlet weak var images:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        self.navigationItem.rightBarButtonItem = bEditDetail
        if detail == "彼得潘好帥"{
            self.detailText?.text = detailString[0]
            images.image = UIImage(named: "peter")
        }else if detail == "PeterPanILoveu" {
            self.detailText?.text = detailString[1]
        }
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as! ChangeDetailViewController
        next.detailText = (self.detailText?.text)!
        next.controller = self
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
