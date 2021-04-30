//
//  ListNotes.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 29/04/21.
//

import SwiftUI

struct ListNotes: View {
    @State private var notes = [Note]()
    
    var body: some View {
        VStack{
            Text("Notas : \(notes.count)")
            List{
                ForEach(0..<notes.count, id: \.self) { i in
                    NavigationLink(destination: DetailNote(note: notes[i])) {
                        Text(notes[i].title)
                            .lineLimit(1)
                    }
                }
                .onDelete(perform: delete)
            }
        }
        .navigationTitle("Notas creadas")
        .onAppear(perform: {
            notes = Tools.shared.load()
        })
    }
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
