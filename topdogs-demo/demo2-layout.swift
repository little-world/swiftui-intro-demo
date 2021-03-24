//
//  demo2-layout.swift
//  topdogs-demo
//
//  Created by peter van rijn on 16/03/2021.
//

import SwiftUI

struct demo2_layout: View {
    var body: some View {
      
      VStack {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
          .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      }
      .padding()
      .border(Color.red)
      .background(Color.yellow)
      .offset(x: 20)
      .frame(width: 300, height: 300, alignment: .leading)
    }
}

struct demo2_layout_Previews: PreviewProvider {
    static var previews: some View {
        demo2_layout()
    }
}
