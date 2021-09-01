//
//  SceneManager.swift
//  StartMenuTest-3
//
//  Created by David Malicke on 8/31/21.
//

import Foundation
import SpriteKit

// need a case for each Scene Type

class SceneManager {
    
    enum SceneType {
        case MenuScene, OptionsScene, GameScene
        
    }
    
    private init() {}
    static let shared = SceneManager()
    
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
        return MenuScene()
      case SceneType.OptionsScene:
        return OptionsScene()
      case SceneType.GameScene:
        return GameScene()
      }
    }
    
    
    
}
