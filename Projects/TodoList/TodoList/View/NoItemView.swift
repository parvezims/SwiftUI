//
//  NoItemView.swift
//  TodoList
//
//  Created by Mohammad.Parvez on 09/09/22.
//

import SwiftUI

struct NoItemView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColot : Color = Color("secondaryAccentColor")
    var body: some View {
        
        ScrollView {
            
            VStack (spacing: 10) {
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and add some todo items!")
                    .font(.headline)
                    .foregroundColor(.gray)
                NavigationLink(
                    destination: AddView() ,
                    label: {
                    
                        Text("Add New Todo")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth:.infinity)
                            .background(animate ? secondaryAccentColot : Color.accentColor )
                            .cornerRadius(10)
                })
                    .padding(.horizontal, animate ? 30 : 50)
                    .shadow(
                        color: animate ? secondaryAccentColot.opacity(0.7) : Color.accentColor.opacity(0.7),
                        radius: animate ? 30 : 10 ,
                        x: 0,
                        y: animate ? 50 : 30)
                    .scaleEffect(animate ? 1.1 : 1.0)
                    .offset(y: animate ? -7 : 0)
                
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
            
        }
        .frame(maxWidth:.infinity, maxHeight:.infinity)
    }
    
    func addAnimation() {
        
        guard !animate else {  return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation.easeIn(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

struct NoItemView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            NavigationView {
                NoItemView()
                    .navigationTitle("No items")
            }
            .previewInterfaceOrientation(.portrait)
            NavigationView {
                NoItemView()
                    .navigationTitle("No items")
            }
            .previewInterfaceOrientation(.portrait)
        }
    }
}
