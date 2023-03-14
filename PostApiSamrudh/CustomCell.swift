//
//  CustomCell.swift
//  PostApiSamrudh
//
//  Created by Nayan Pawar on 10/03/23.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        backView.layer.borderWidth = 1
        backView.layer.borderColor = UIColor.gray.cgColor
        img.layer.borderWidth = 0.5
        img.layer.borderColor = UIColor.gray.cgColor
    }
}
