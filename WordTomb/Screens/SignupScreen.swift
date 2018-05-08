//
//  SignupScreen.swift
//  WordTomb
//
//  Created by Udeshi on 5/6/18.
//  Copyright © 2018 Udeshi. All rights reserved.
//

import Foundation
import SpriteKit

class SignupScene: SKScene,SceneNavigator {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "authScreenBackgroundImage.jpg")
        background.position = CGPoint(x:size.width/2, y:size.height/2)
        background.size = view.frame.size
        addChild(background)
        
        // add sub view
        // let tempView = Bundle.mainBundle.loadNibNamed("SomeView", owner: self, options: nil)
        
        let tempView = Bundle.main.loadNibNamed("HamburgerMenu", owner: self, options: nil)?.first as? HamburgerMenu
        if let tempView = tempView {
            //tempView.frame = CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
            tempView.sceneNavigator = self
            view.addSubview(tempView)
            view.bringSubview(toFront: tempView)
        }
    }
    
    func navigateToScene() {
        let reveal = SKTransition.flipHorizontal(withDuration: 1.0)
        //let skView = self.view as! SKView
        let loginScreen = LoginScene(size: CGSize(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        loginScreen.scaleMode  = .aspectFill
        self.view?.presentScene(loginScreen, transition: reveal)
    }
}
