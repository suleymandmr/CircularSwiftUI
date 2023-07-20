//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by eyüp yaşar demir on 18.07.2023.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth: CGFloat
    let backgraundColor : Color
    let foregraundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack{
                Circularshape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgraundColor)
                Circularshape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(foregraundColor)
            }
            .animation(.easeIn(duration: 1.0), value: percentage)
            .padding(lineWidth/1.5)
            
        }
     
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backgraundColor: .red, foregraundColor: .green, percentage: 50)
    }
}
