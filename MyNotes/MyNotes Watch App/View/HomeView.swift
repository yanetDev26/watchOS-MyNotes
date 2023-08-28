//
//  HomeView.swift
//  MyNotes Watch App
//
//  Created by Yanet Rodriguez on 19/08/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { reader in
            let rect = reader.frame(in: .global)

            VStack(spacing: 10) {
                HStack(spacing: 20) {
                    NavigationLink(destination: ViewView(), label: {
                        NavButtton(image: "note.text", title: "Ver", rect: rect, color: .purple)
                    })
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: AddView(), label: {
                        NavButtton(image: "note.text.badge.plus", title: "Nuevo", rect: rect, color: .cyan)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .frame(width: rect.width, alignment: .center)

                HStack(spacing: 20) {
                    NavigationLink(destination: AddView(), label: {
                        NavButtton(image: "heart.fill", title: "Favoritas", rect: rect, color: .pink)
                    })
                    .buttonStyle(PlainButtonStyle())

                    NavigationLink(destination: DeleteView(), label: {
                        NavButtton(image: "trash.fill", title: "Eliminar", rect: rect, color: .red)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .frame(width: rect.width, alignment: .center)
            }
        }
    }
}

struct NavButtton: View {
    var image: String
    var title: String
    var rect: CGRect
    var color: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: image)
                .font(.title2)
                .frame(width: rect.width / 3, height: rect.height / 3, alignment: .center)
                .background(color)
                .clipShape(Circle())

            Text(title)
                .font(.system(size: 10))
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
