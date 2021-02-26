//
//  CustomComposableView.swift
//  ComposableViewsAndAnimations
//
//  Created by Russell Gordon on 2021-02-24.
//

import SwiftUI




struct CustomComposableView: View {
    
    @State private var shouldAnimate = true
    @State private var circleColour = Color.green
    @State var topOffset: CGFloat = 500
    @State var bottomOffset: CGFloat = 0
    @State var bottom: CGPoint = 
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    var body: some View {
        Circle()
            .fill(circleColour)
            .frame(width: 40, height: 40)
            .offset(x: shouldAnimate ? bottomOffset : topOffset)
            .animation(Animation
                        .easeOut(duration: 2)
                        .repeatForever(autoreverses: true))
//            .onAppear() {
//                shouldAnimate = true
//                circleColour = .red
//            }
            .accessibility(activationPoint: bottom)
        
    }
    
}


struct CustomComposableView_Previews: PreviewProvider {
    static var previews: some View {
        CustomComposableView()
    }
}

