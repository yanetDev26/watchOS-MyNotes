//
//  AddView.swift
//  MyNotes Watch App
//
//  Created by Yanet Rodriguez on 19/08/2023.
//

import SwiftUI

struct AddView: View {
    @State var noteText = ""

    var body: some View {
        VStack(spacing: 15) {
            TextField("Escribir...", text: $noteText)

            Button(action: {}, label: {
                Text("Guardar")
                    .padding(.vertical, 10)
                    .frame(maxWidth: .infinity, alignment: .center)
            })
            .padding(.horizontal)
            .buttonStyle(BorderedButtonStyle())
            .disabled(noteText == "")
        }
        .navigationTitle("Nueva nota")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
