//
//  SceneDelegate.swift
//  NaengjangGO_iOS
//
//  Created by 김우성 on 2022/01/12.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        
//        if #available(iOS 15.0, *) {
//            let navigationBarAppearance = UINavigationBarAppearance()
//            navigationBarAppearance.backgroundColor = .clear
//            
//            UINavigationBar.appearance().standardAppearance = navigationBarAppearance
//            UINavigationBar.appearance().compactAppearance = navigationBarAppearance
//            UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
//        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SplashVC") as! SplashViewController
        let window = UIWindow(windowScene: scene)
        window.rootViewController = vc
        self.window = window
//        let storage = MemoryStorage()
        let coordinator = SceneCoordinator(window: self.window!)
        let viewModel = LoginViewModel(
            title: "",
            sceneCoordinator: coordinator)
        
        let loginScene = Scene.login(viewModel)
        
        coordinator.transition(
            to: loginScene,
            using: .root,
            animated: true)
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

