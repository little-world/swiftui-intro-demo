//
//  demo7-perference-key.swift
//  topdogs-demo
//
//  Created by peter van rijn on 17/03/2021.
//

import SwiftUI

struct demo7_perference_key: View {
  @State private var alert: PresentableAlert?
   
   var body: some View {
       HelloWorldView()
           .onPreferenceChange(AlertPreferenceKey.self) { self.alert = $0 }
           .alert(item: $alert) { alert in
               Alert(title: Text(alert.title), message: alert.message.map(Text.init))
       }
   }
}

struct HelloWorldView: View {
   var body: some View {
       ZStack {
           Color.yellow
           VStack {
               Text("Hello, World!")
               ViewWithAlert()
           }
       }
   }
}

struct ViewWithAlert: View {
    @State private var alert: PresentableAlert?
    
    var body: some View {
        Button("Show alert", action: { self.alert = PresentableAlert(title: "Title", message: "Message") })
            .preference(key: AlertPreferenceKey.self, value: alert)
    }
}



struct demo7_perference_key_Previews: PreviewProvider {
    static var previews: some View {
        demo7_perference_key()
    }
}



struct AlertPreferenceKey: PreferenceKey {
    static var defaultValue: PresentableAlert?

    static func reduce(value: inout PresentableAlert?, nextValue: () -> PresentableAlert?) {
        value = nextValue()
    }
}

struct PresentableAlert: Equatable, Identifiable {
    let id = UUID()
    let title: String
    let message: String?
    
    static func == (lhs: PresentableAlert, rhs: PresentableAlert) -> Bool {
        lhs.id == rhs.id
    }
}

