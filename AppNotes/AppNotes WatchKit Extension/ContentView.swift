//
//  ContentView.swift
//  AppNotes WatchKit Extension
//
//  Created by Germán Santos Jaimes on 30/04/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            VStack{
                NavigationLink("Agregar nota", destination: AddNote())
                NavigationLink("Listar notas", destination: ListNotes())
            }
            .navigationTitle("Notas App")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
