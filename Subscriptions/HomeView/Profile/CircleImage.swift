//
//  CircleImage.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("BenSimpsonFace")
        .resizable()
            .aspectRatio(contentMode: .fit)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth:4))
            .shadow(radius: 10)

        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
