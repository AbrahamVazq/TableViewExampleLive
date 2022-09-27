//  MyFeedTableViewCell.swift
//  TableViewExampleLive
//  Created by 291732 on 27/09/22.

import UIKit

class MyFeedTableViewCell: UITableViewCell {
    //MARK: - O U T L E T
    @IBOutlet private weak var imgProfile: UIImageView!
    @IBOutlet private weak var lblName: UILabel!
    @IBOutlet private weak var lblshareData: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpView(with model: FeedItem) {
        imgProfile.image = model.profileImage
        lblName.text = model.profileName
        lblshareData.text = model.profileShareData
    }
    
}
