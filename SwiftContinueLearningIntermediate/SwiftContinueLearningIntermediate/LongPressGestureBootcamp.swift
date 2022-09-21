//
//  LongPressGestureBootcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 11/09/22.
//

import SwiftUI

struct LongPressGestureBootcamp: View {
    
    @State var isComplete : Bool = false
    @State var isSuccess : Bool = false
    @State var backColor : Color = .gray
    var body: some View {
        
        VStack{
            
            Rectangle()
                .fill(isSuccess ? .green : .blue)
                .frame(maxWidth: isComplete ? 0 : .infinity)
                .frame(height:55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.gray)
            
            
            HStack{
                
                Text("Click Here")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                
                    .onLongPressGesture(
                        minimumDuration: 1.0,
                        maximumDistance: 50.0) { isPressing in
                            if isPressing {
                                withAnimation(.easeInOut(duration: 1.0)) {
                                    isComplete = true
                                }
                            }
                            else {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                    
                                    if !isSuccess {
                                        withAnimation(.easeInOut) {
                                            isComplete = false
                                        }
                                    }
                                }
                            }
                        }
                        perform: {
                            withAnimation(.easeInOut) {
                                isSuccess = true
                            }
                        }
                
                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
                        isSuccess = false
                        isComplete = false
                    }
            }
            
        }
        
        
//        Text(isComplete ? "Completed" : "Not Compleyted")
//            .padding()
//            .padding(.horizontal)
//            .background(
//                backColor
//            )
//            .cornerRadius(10)
//            .onTapGesture {
//                isComplete.toggle()
//                backColor = .red
//            }
//
//            .onLongPressGesture(minimumDuration: 2.0 , maximumDistance: 100) {
//                backColor = .yellow
//                isComplete.toggle()
//            }
    }
}

struct LongPressGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGestureBootcamp()
    }
}
