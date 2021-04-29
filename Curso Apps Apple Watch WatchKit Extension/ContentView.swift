//
//  ContentView.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 28/04/21.
//

import SwiftUI

struct ContentView: View {
    @State var notes : [Note] = []
    
    var body: some View {
        VStack{
            Text("Notas : \(notes.count)")
            Button("Agregar nota"){
                let note = Note(id: UUID(), title: "Test", creationDate: Date())
                notes.append(note)
            }
            List(notes) { note in
                Text("\(note.title) - \(note.creationDate)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
