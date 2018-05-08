//
// LoginViewController.swift
//  WordTomb
//
//  Created by Udeshi on 5/5/18.
//  Copyright © 2018 Udeshi. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class LoginViewController: UIViewController {
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    
    
    var currentView : SKView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let skView = self.view as! SKView
        let scene = LoginScene(size: CGSize(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        scene.scaleMode  = .aspectFill
        currentView = skView
        skView.presentScene(scene)
        
    }

    @IBAction func getStartedBtnClicked(_ sender: UIButton) {
        let user = CoreDataHandler.fetchUserDetails(email:"user@123" )
        if(( user ) != nil){
            print("saved user" + (user?.password)!)
            user?.password == "123456" ? print("print correct user"): print("try again")
            UserDefaultsHandler().save(data: (user?.userName)!,key: "Session")
        }
        
    }
    @IBAction func createAccountBtnClicked(_ sender: UIButton) {
        let reveal = SKTransition.flipHorizontal(withDuration: 1.0)
        //let skView = self.view as! SKView
        let signupScreen = SignupScene(size: CGSize(width:UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        
        signupScreen.scaleMode  = .aspectFill
        currentView.presentScene(signupScreen, transition: reveal)
    }
    
}
