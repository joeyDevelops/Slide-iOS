//
//  EditorToolbar.swift
//  Slide for Reddit
//
//  Created by Carlos Crane on 1/10/17.
//  Copyright © 2017 Haptic Apps. All rights reserved.
//

import UIKit
import ASHorizontalScrollView

class EditorToolbar {
    var textView: UITextView
    
    init(textView: UITextView){
        self.textView = textView
        addToolbarToTextView()
    }
    
    func addToolbarToTextView(){
        let horizontalScrollView = ASHorizontalScrollView(frame: CGRect.init(x: 0, y: 0, width: textView.frame.size.width, height: 50))
        horizontalScrollView.marginSettings_320 = MarginSettings(leftMargin: 10, miniMarginBetweenItems: 5, miniAppearWidthOfLastItem: 20)
        horizontalScrollView.marginSettings_414 = MarginSettings(leftMargin: 10, miniMarginBetweenItems: 5, miniAppearWidthOfLastItem: 20)
        horizontalScrollView.marginSettings_736 = MarginSettings(leftMargin: 10, miniMarginBetweenItems: 10, miniAppearWidthOfLastItem: 30)
        horizontalScrollView.defaultMarginSettings = MarginSettings(leftMargin: 10, miniMarginBetweenItems: 10, miniAppearWidthOfLastItem: 10)
        horizontalScrollView.uniformItemSize = CGSizeMake(50, 50)
        horizontalScrollView.setItemsMarginOnce()
        horizontalScrollView.backgroundColor = ColorUtil.backgroundColor
        for s in  [
            generateButtons(image: "save", action: #selector(self.saveDraft(_:))),
            generateButtons(image: "folder", action: #selector(self.openDrafts(_:))),
            generateButtons(image: "image", action: #selector(self.uploadImage(_:))),
            generateButtons(image: "draw", action: #selector(self.draw(_:))),
            generateButtons(image: "link", action: #selector(self.link(_:))),
            generateButtons(image: "bold", action: #selector(self.bold(_:))),
            generateButtons(image: "italics", action: #selector(self.italics(_:))),
            generateButtons(image: "list", action: #selector(self.list(_:))),
            generateButtons(image: "list_numbered", action: #selector(self.numberedList(_:))),
            generateButtons(image: "size", action: #selector(self.size(_:))),
            generateButtons(image: "strikethrough", action: #selector(self.strike(_:)))] {
                horizontalScrollView.addItem(s)
        }
        textView.inputAccessoryView = horizontalScrollView
    }
    
    func generateButtons(image: String, action: Selector) -> UIButton {
        let more = UIButton.init(type: .custom)
        more.setImage(UIImage.init(named: image)?.withColor(tintColor: ColorUtil.fontColor).imageResize(sizeChange: CGSize.init(width: 25, height: 25)), for: UIControlState.normal)
        more.addTarget(self, action: action, for: UIControlEvents.touchUpInside)
        more.frame = CGRect.init(x: 0, y: 0, width: 50, height: 50)
        return more
    }
    
    @objc func saveDraft(_ sender: AnyObject){
        
    }
    
    @objc func openDrafts(_ sender: AnyObject){
        
    }
    
    @objc func uploadImage(_ sender: AnyObject){
        
    }
    
    @objc func draw(_ sender: AnyObject){
        
    }
    
    @objc func link(_ sender: AnyObject){
        
    }
    
    @objc func bold(_ sender: AnyObject){
        
    }
    
    @objc func italics(_ sender: AnyObject){
        
    }
    
    @objc func list(_ sender: AnyObject){
        
    }
    
    @objc func numberedList(_ sender: AnyObject){
        
    }
    
    @objc func size(_ sender: AnyObject){
        
    }
    
    @objc func strike(_ sender: AnyObject){
        
    }
    
}
