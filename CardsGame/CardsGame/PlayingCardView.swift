//
//  PlayingCardView.swift
//  CardsGame
//
//  Created by IvanLyuhtikov on 8/31/19.
//  Copyright © 2019 IvanLyuhtikov. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {

    private func centeredAttributedString(_ string: String, fontSize: CGFloat) -> NSAttributedString {
        var font = UIFont.preferredFont(forTextStyle: .body).withSize(fontSize)
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
        let paragraphStyle = NSMutableParagraphStyle()
        return NSAttributedString(string: string, attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle, .font: font])
    }

    override func draw(_ rect: CGRect) {
        let roundRect = UIBezierPath(roundedRect: bounds, cornerRadius: 30.0)
//        roundRect.addClip()
        UIColor.white.setFill()
        roundRect.fill()
        
        let square = UIBezierPath(roundedRect: CGRect(x: 2.5, y: 2.5, width: bounds.width-5, height: bounds.height-5), cornerRadius: 30.0)
        square.lineWidth = 5
        UIColor.red.setStroke()
        square.stroke()
    }
    

}
