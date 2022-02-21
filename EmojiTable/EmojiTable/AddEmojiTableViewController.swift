//
//  AddEmojiTableViewController.swift
//  EmojiTable
//
//  Created by dongr on 15.02.2022.
//

import UIKit

class AddEmojiTableViewController: UITableViewController {
    
    var emojiNew = Emoji(name: "", discriptoin: "", emoji: "", isFavourite: false)
    

    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
        
    }
    
    
    private func updateSaveButtonState(){
        let emojiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateSaveButtonState()
        updateUI()

    }
    
    private func updateUI(){
        emojiTF.text = emojiNew.emoji
        nameTF.text = emojiNew.name
        descriptionTF.text = emojiNew.discriptoin
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else {return}
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emojiNew = Emoji(name: name, discriptoin: description, emoji: emoji, isFavourite: self.emojiNew.isFavourite)
    }

  

}
