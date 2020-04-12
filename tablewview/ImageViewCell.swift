//
//  ImageViewCell.swift
//  tablewview
//
//  Created by mac on 06/04/20.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ImageViewCell: UITableViewCell {


    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var LabelView: UILabel!
    
    func setImages(imagee:Image){
        ImageView.image = imagee.image
        LabelView.text = imagee.title
    }
}
