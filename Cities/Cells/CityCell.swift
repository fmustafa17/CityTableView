//
//  CityCell.swift
//  Cities
//
//  Created by Farhana Mustafa on 9/8/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    @IBOutlet weak var textlabel: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initViews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initViews()
    }

    func initViews() {
        selectedBackgroundView = UIView(frame: frame)
        selectedBackgroundView?.backgroundColor = .paleGreyThree
    }

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
