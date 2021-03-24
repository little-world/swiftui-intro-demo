//
//  demo3-form.swift
//  topdogs-demo
//
//  Created by peter van rijn on 16/03/2021.
//

import SwiftUI

struct demo3_form: View {
  @State var message = "doei"
    var body: some View {
      VStack {
        TextField("here your text", text: $message)
        ExtractedView(message: message)
        ExtractedView2(message: $message)
     
      }
    }
}

struct demo3_form_Previews: PreviewProvider {
    static var previews: some View {
        demo3_form()
    }
}

struct ExtractedView: View {
  var message: String
  var body: some View {
    Text(message)
  }
}

struct ExtractedView2: View {
  @Binding var message: String
  var body: some View {
    Button(action: {
      // print("action")
      message = "hallo"
    }, label: {
      Text("Hallo")
    })
  }
}
