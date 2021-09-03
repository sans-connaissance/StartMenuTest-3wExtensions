//
//  OptionsScene.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/24/21.
//

import SpriteKit

class OptionsScene: SKScene {
    
    var backLabelNode: SKLabelNode!
    
    
    override func didMove(to view: SKView) {
        
        backLabelNode = (self.childNode(withName: "backLabel") as! SKLabelNode)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        
        if let location = touch?.location(in: self) {
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "backLabel" {
                
                transition(self, toScene: .MenuScene, transition: SKTransition.fade(withDuration: 1))
            }
        }
    }
}
