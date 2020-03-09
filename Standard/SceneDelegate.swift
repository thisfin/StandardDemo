//
//  SceneDelegate.swift
//  Standard
//
//  Created by 李毅 on 2020/1/13.
//  Copyright © 2020 文优. All rights reserved.
//

import Then
import UIKit
import HandyJSON

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: scene).then {
            $0.backgroundColor = .systemBackground
            $0.rootViewController = UINavigationController(rootViewController: ViewController())
            $0.makeKeyAndVisible()
        }
        
        HandyJSONConfiguration.debugMode = .verbose
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}
