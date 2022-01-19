//
//  MyOwnView.swift
//  UIViewAsXib
//
//  Created by MutasemW on 2022-01-19.
//

import UIKit

class MyOwnView: UIView {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var lbl: UILabel!
    let nibName = "MyOwnView"
    
        // required
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        //required
        override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        
        func commonInit() {
            guard let view = loadViewFromNib() else { return }
            view.frame = self.bounds
            self.addSubview(view)
        }
        // loading xib file
        func loadViewFromNib() -> UIView? {
            let nib = UINib(nibName: nibName, bundle: nil)
            return nib.instantiate(withOwner: self, options: nil).first as? UIView
        }
    
    
    
}
