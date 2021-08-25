//
//  GameScene.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/24/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var quitLabelNode: SKLabelNode!
    var nextLevelNode: SKLabelNode!
    
    
    override func didMove(to view: SKView) {
        
        quitLabelNode = (self.childNode(withName: "quitLabel") as! SKLabelNode)
        nextLevelNode  = (self.childNode(withName: "nextLevelLabel") as! SKLabelNode)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "quitLabel" {
                
                if let menuScene = MenuScene(fileNamed: "MenuScene") {
                    let transition = SKTransition.fade(withDuration: 1)
                    menuScene.scaleMode = .aspectFit
                    self.view?.presentScene(menuScene, transition: transition)
                }
                
//                let transition = SKTransition.fade(withDuration: 1)
//                let gameScene = GameScene(size: self.size)
//                self.view?.presentScene(gameScene, transition: transition)
            }
        }
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
