//
//  SceneDelegate.swift
//  AppTest
//
//  Created by Julian Centurion on 29/01/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let localizable = LocalizableImp()
        let viewController = SettingsViewController()
            .with(database: DataBaseImp())
            .with(wordings: Wordings(localizable: localizable))
            .with(localizable: localizable)

        window.rootViewController = UINavigationController(rootViewController: viewController)
        self.window = window
        window.makeKeyAndVisible()
    }
}
