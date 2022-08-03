//
//  SweaterShopDemoApp.swift
//  SweaterShopDemo
//
//  Created by Ömer Faruk Kılıçaslan on 31.07.2022.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
      FirebaseApp.configure()
    return true
  }
}


@main
struct SweaterShopDemoApp: App {
    @StateObject var pokemonViewModel = PokemonViewModel()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationView{
                let viewModel = AppViewModel()
                
                LoginView()
                    .environmentObject(viewModel)
                    .environmentObject(pokemonViewModel)
            }
            
        }
    }
}
