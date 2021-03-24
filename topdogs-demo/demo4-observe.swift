//
//  demo4-observe.swift
//  topdogs-demo
//
//  Created by peter van rijn on 17/03/2021.
//

import SwiftUI

struct demo4_observe: View {
  @ObservedObject var store = PersonStore()
  
  var body: some View {
    NavigationView {
      List {
        ForEach(store.persons) { person in
          VStack(alignment: .leading) {
            Text(person.name)
              .font(.headline)
            Text("Age: \(person.age)")
              .font(.subheadline)
              .foregroundColor(.secondary)
          }
        }
        
      }.navigationBarTitle("Persons")
    }
  }
}



struct demo4_observe_Previews: PreviewProvider {
  static var previews: some View {
    demo4_observe()
  }
}



struct Person: Identifiable {
  let id = UUID()
  var name: String
  var age: Int
}

final class PersonStore: ObservableObject {
  @Published var persons = [
    Person(name: "Majid", age: 28),
    Person(name: "John", age: 31),
    Person(name: "Fred", age: 25)
  ]
}
