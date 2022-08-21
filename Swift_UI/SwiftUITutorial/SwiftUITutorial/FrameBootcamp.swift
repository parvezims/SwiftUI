//
//  FrameBootcamp.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 17/08/22.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
      //  Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
         
      //      .background(.red)
        
        
//            .frame(minWidth: 10,
//                   idealWidth: 200,
//                   maxWidth: 500,
//                   minHeight: 20,
//                   idealHeight: 40,
//                   maxHeight: 60,
//                   alignment: .center)
        
           // .frame( maxWidth: .infinity,maxHeight: .infinity, alignment: .center)
          //  .frame(width: 200, height: 200, alignment: .center)
        
          //  .foregroundColor(.blue)
         //.background(.green)
        
        
        
        Text("Hello World!")
            .background(.red)
            .frame(width: 200)
            .background(.yellow)
            .frame(height:50, alignment:.top)
            .background(.green)
            .frame(width:300, alignment: .topLeading)
            .background(.pink)
            .frame(height:200)
            .background(.blue)
        // ans so on...
        
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrameBootcamp()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
