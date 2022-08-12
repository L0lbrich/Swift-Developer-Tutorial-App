//
//  FirstProductApp.swift
//  Shared
//
//  Created by Logan Olbrich on 8/3/22.
//

import SwiftUI

@main
struct FirstProductApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
