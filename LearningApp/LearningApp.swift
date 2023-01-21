//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by MD HUSSAIN SHAH JAWED on 21/1/23.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentModel())
        }
    }
}
