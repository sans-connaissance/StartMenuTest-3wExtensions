//
//  SceneManagerX.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 9/2/21.
//

import Foundation
import SpriteKit


extension SKScene {
    
    enum SceneType {
        case MenuScene, OptionsScene, GameScene
    }
    
    func transition(_ fromScene: SKScene, toScene: SceneType, transition: SKTransition? = nil ) {
        
      guard let scene = getScene(toScene) else { return }
      
      if let transition = transition {
        scene.scaleMode = .aspectFill
        fromScene.view?.presentScene(scene, transition: transition)
      } else {
        scene.scaleMode = .aspectFill
        fromScene.view?.presentScene(scene)
      }
      
    }
    
    func getScene(_ sceneType: SceneType) -> SKScene? {
      switch sceneType {
      case SceneType.MenuScene:
        return MenuScene(fileNamed: "MenuScene")
      case SceneType.OptionsScene:
        return OptionsScene(fileNamed: "OptionsScene")
      case SceneType.GameScene:
        return GameScene(fileNamed: "GameScene")
      }
    }
    
}
