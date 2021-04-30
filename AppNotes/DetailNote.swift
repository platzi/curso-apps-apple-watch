//
//  DetailNote.swift
//  Curso Apps Apple Watch WatchKit Extension
//
//  Created by Germán Santos Jaimes on 29/04/21.
//

import SwiftUI

struct DetailNote: View {
    
    let note: Note
    
    var body: some View {
        VStack{
            
            Text(note.title)
                .font(.system(size: 20))
                .foregroundColor(.white)
            Spacer()
            VStack(alignment: .leading, spacing: 3, content:{
                Text("Last Modified")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.top,4)
                
                Text(note.creationDate)
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            })
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "Hello notes"))
    }
}
