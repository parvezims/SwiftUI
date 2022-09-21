//
//  DragGestureBootcamp2.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 15/09/22.
//

import SwiftUI

struct DragGestureBootcamp2: View {
    
    @State var startingOffsetY : CGFloat = UIScreen.main.bounds.height * 0.85
    @State var currentDragOffsetY : CGFloat = 0
    @State var endingOffset : CGFloat = 0
    
    var body: some View {

        ZStack {
            Color.green.ignoresSafeArea()
            
            
            SignupView()
                .offset(y: startingOffsetY)
                .offset(y: currentDragOffsetY)
                .offset(y: endingOffset)
                .gesture(
                
                    DragGesture()
                        .onChanged {value in
                            
                            withAnimation(.spring()) {
                                currentDragOffsetY = value.translation.height
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                if currentDragOffsetY < -150 {
                                    endingOffset = -startingOffsetY
                                }
                                else if endingOffset != 0 && currentDragOffsetY > 150 {
                                    endingOffset = 0
                                }
                                currentDragOffsetY = 0 
                            }
                        }
                )
            Text("\(currentDragOffsetY)")
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct DragGestureBootcamp2_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureBootcamp2()
    }
}

struct SignupView: View {
    var body: some View {
        VStack (spacing: 20) {
            
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("This is a description for our app. This is my favourite swift UI course and I recommend to all of my friends to subcribe the youtube channel and share the video")
                .multilineTextAlignment(.center)
            
            
            Text("Create an account")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(30)
    }
}
