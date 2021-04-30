//
//  ContentView.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 28/04/21.
//

import SwiftUI

struct ContentView: View {
    @State private var notes : [Note] = []
    @State private var text = ""
    
    var body: some View {
        VStack{
            Text("Notas : \(notes.count)")
            Button("Agregar nota"){
                guard text.isEmpty == false else { return }
                let note = Note(title: text)
                notes.append(note)
                text = ""
            }
            TextField("Agregar nueva nota", text: $text)
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
