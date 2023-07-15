//
//  CarWarningLightsApp.swift
//  CarWarningLights
//
//  Created by 박지은 on 2023/07/12.
//

import SwiftUI
import FirebaseCore
import Combine
import FirebaseAnalyticsSwift


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
 }

@main
struct CarWarningLightsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
