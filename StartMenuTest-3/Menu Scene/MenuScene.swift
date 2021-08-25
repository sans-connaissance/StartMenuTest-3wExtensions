//
//  MenuScene.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/24/21.
//

import SpriteKit

class MenuScene: SKScene {
    
    var newGameButtonNode: SKSpriteNode!
    var difficultyButtonNode: SKSpriteNode!
    var difficultyLabelNode: SKLabelNode!
    var settingsButtonNode: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        newGameButtonNode = (self.childNode(withName: "newGameButton") as! SKSpriteNode)
        settingsButtonNode = (self.childNode(withName: "settingsButton") as! SKSpriteNode)
        
        difficultyButtonNode = (self.childNode(withName: "difficultyButton") as! SKSpriteNode)
        difficultyLabelNode = (self.childNode(withName: "difficultyLabel") as! SKLabelNode)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "newGameButton" {
                
                if let gameScene = GameScene(fileNamed: "GameScene") {
                    let transition = SKTransition.fade(withDuration: 1)
                    gameScene.scaleMode = .aspectFit
                    self.view?.presentScene(gameScene, transition: transition)
                }
            }
            
            if nodesArray.first?.name == "settingsButton" {
                
                if let optionsScene = OptionsScene(fileNamed: "OptionsScene") {
                    let transition = SKTransition.fade(withDuration: 1)
                    optionsScene.scaleMode = .aspectFit
                    self.view?.presentScene(optionsScene, transition: transition)
                }
            }
            
        }
    }
}
