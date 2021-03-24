//
//  demo6-environment.swift
//  topdogs-demo
//
//  Created by peter van rijn on 17/03/2021.
//

import SwiftUI

// Our observable object class
class GameSettings: ObservableObject {
  @Published var score = 0
}

// A view that expects to find a GameSettings object
// in the environment, and shows its score.
struct DetailsView: View {
  @EnvironmentObject var settings: GameSettings
  
  var body: some View {
    VStack {
      Text("Score: \(settings.score)")
      Button("Score More") {
        settings.score += 10
      }
    }
  }
}

// A view that creates the GameSettings object,
// and places it into the environment for the
// navigation view.
struct demo6_environment: View {
  @StateObject var settings = GameSettings()
  
  var body: some View {
    NavigationView {
      VStack {
        Text("Score: \(settings.score)")
        
        // A button that writes to the environment settings
        Button("Increase Score") {
          settings.score += 1
        }
        
        NavigationLink(destination: DetailsView()) {
          Text("To DetailsView")
        }
      }
      .frame(height: 200)
    }
    .environmentObject(settings)
  }
}
struct demo6_environment_Previews: PreviewProvider {
  static var previews: some View {
    demo6_environment()
  }
}
