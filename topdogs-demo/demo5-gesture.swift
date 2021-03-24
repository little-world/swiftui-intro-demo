//
//  demo5-gesture.swift
//  topdogs-demo
//
//  Created by peter van rijn on 17/03/2021.
//

import SwiftUI

struct demo5_gesture: View {
  @GestureState var dragAmount = CGSize.zero
    var body: some View {
      Rectangle()
        .frame(width: 50, height: 50)
          .offset(dragAmount)
        .gesture(
              DragGesture().updating($dragAmount) { value, state, transaction in
                  state = value.translation
              }
          )
    }
}

struct demo5_gesture_Previews: PreviewProvider {
    static var previews: some View {
        demo5_gesture()
    }
}
