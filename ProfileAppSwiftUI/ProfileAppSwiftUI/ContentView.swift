//
//  ContentView.swift
//  ProfileAppSwiftUI
//
//  Created by Matvei Khlestov on 18.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 17) {
                PhotoView(width: 370, height: 249, image: Image(.user))
                HStack(spacing: 16) {
                    PhotoView(
                        width: 114,
                        height: 114,
                        image: Image(.photo1)
                    )
                    PhotoView(
                        width: 114,
                        height: 114,
                        image: Image(.photo2)
                    )
                    PhotoView(
                        width: 114,
                        height: 114,
                        image: Image(.photo3)
                    )
                }
            }
            .padding(.bottom, 43)
            
            VStack(alignment: .leading, spacing: 28) {
                HStack {
                    Image(.person)
                    Text("User Name")
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                    Image(.age)
                    Text("25")
                        .font(.system(size: 20, weight: .bold))
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text("About")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(.appGray)
                    Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                        .font(.system(size: 16, weight: .medium))
                }
            }
            Spacer()
            Button("Настроить профиль") {
                print("Настроить профиль")
            }
            .font(.system(size: 16, weight: .medium))
            .foregroundStyle(.white)
            .frame(width: 370, height: 60)
            .background(Color(.blue))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .padding( .bottom, 30)
        }
        .padding([.leading, .trailing, .top], 30)
    }
}

#Preview {
    ContentView()
}
