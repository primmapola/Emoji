//
//  EmojiTableViewCell.swift
//  EmojiTable
//
//  Created by dongr on 14.02.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var emojiLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(object: Emoji){
        self.emojiLable.text = object.emoji
        self.nameLable.text = object.name
        self.descriptionLable.text = object.discriptoin
    }


}
