//
//  demo8-animations.swift
//  topdogs-demo
//
//  Created by peter van rijn on 17/03/2021.
//

import SwiftUI

struct demo8_animations: View {

      @State private var angle: Double = 0
      @State private var borderThickness: CGFloat = 1

      var body: some View {
          Button("Press here") {
              angle += 45
              borderThickness += 1
          }
          .padding()
          .border(Color.red, width: borderThickness)
          .rotationEffect(.degrees(angle))
          .animation(.easeIn)
      }
  }

struct demo8_animations_Previews: PreviewProvider {
    static var previews: some View {
        demo8_animations()
    }
}
