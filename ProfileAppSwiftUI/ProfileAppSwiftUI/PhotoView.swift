//
//  PhotoView.swift
//  ProfileAppSwiftUI
//
//  Created by Matvei Khlestov on 19.07.2024.
//

import SwiftUI

struct PhotoView: View {
    
    let width: CGFloat
    let height: CGFloat
    let image: Image
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 30))
            image
                .resizable()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 30))
        }
    }
}

#Preview {
    PhotoView(width: 114, height: 114, image: Image(.photo1))
}
