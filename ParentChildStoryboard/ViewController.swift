//
//  ViewController.swift
//  ParentChildStoryboard
//
//  Created by Ciprian Rarau on 2017-05-30.
//  Copyright © 2017 Ciprian Rarau. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet var firstChildView: ChildView!
    @IBOutlet var secondChildView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        if let child = self.view.from(nib: "ChildViewAddedManually") {
            self.secondChildView.addSubview(child)
            child.snp.makeConstraints{ make in
                make.top.equalToSuperview()
                make.left.equalToSuperview()
                make.size.equalToSuperview()
            }
        }
        
        if let child = self.view.from(nib: "ChildViewAddedManually") {
            let margin = 16
            self.view.addSubview(child)
            child.snp.makeConstraints{ make in
                make.top.equalTo(self.secondChildView.snp.bottom).offset(margin)
                make.height.equalTo(self.secondChildView.snp.height)
                make.left.equalToSuperview().offset(margin)
                make.right.equalToSuperview().offset(-margin - 50)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

