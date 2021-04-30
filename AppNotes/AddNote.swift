//
//  AddNote.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 29/04/21.
//

import SwiftUI

struct AddNote: View {
    @State private var notes = [Note]()
    @State private var text = ""
   
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            TextField("nota", text: $text)
            Button("Agregar nota"){
                guard text.isEmpty == false else { return }
                let note = Note(title: text)
                notes.append(note)
                Tools.shared.save(array: notes)
                text = ""
                presentation.wrappedValue.dismiss()
            }
        }
        .navigationTitle("Crear una nota")
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
}

struct AddNote_Previews: PreviewProvider {
    static var previews: some View {
        AddNote()
    }
}
