//
//  SingleButtonCell.swift
//  Handy
//
//  Created by hongjian lin on 11/5/18.
//  Copyright © 2018 com.hongjian. All rights reserved.
//

import UIKit

protocol SingleButtonCellDelegate: AnyObject {
    func singleButtonTapped()
}


class SingleButtonCell: UICollectionViewCell {

    static let identifier = "SingleButtonCell"
    weak var delegate : SingleButtonCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func singleButtonAction(_ sender: Any) {
        delegate?.singleButtonTapped()
    }
    
    

}
