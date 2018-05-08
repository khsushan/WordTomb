//
//  LoginScreen.swift
//  WordTomb
//
//  Created by Udeshi on 5/5/18.
//  Copyright © 2018 Udeshi. All rights reserved.
//

import Foundation
import SpriteKit

class LoginScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "authScreenBackgroundImage.jpg")
        background.position = CGPoint(x:size.width/2, y:size.height/2)
        background.size = view.frame.size
        addChild(background)
    }
}
