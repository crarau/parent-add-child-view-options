//
//  ChildView.swift
//  ParentChildStoryboard
//
//  Created by Ciprian Rarau on 2017-05-30.
//  Copyright © 2017 Ciprian Rarau. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    func from<T : UIView>(nib: String) -> T? {
        guard let view = Bundle.main.loadNibNamed(nib, owner: self, options: nil)?.first as? T else {
            return nil
        }
        return view
    }
}

class ChildView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet var button: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    func setup() {
        self.contentView = self.from(nib: "ChildView")
        self.contentView.frame.size = self.frame.size
        addSubview(self.contentView)
    }
    @IBAction func buttonClick(_ sender: Any) {
        print("button")
    }
}
