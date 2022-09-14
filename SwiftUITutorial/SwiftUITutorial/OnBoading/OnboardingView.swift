//
//  OnboardingView.swift
//  SwiftUITutorial
//
//  Created by Mohammad.Parvez on 29/08/22.
//

import SwiftUI

struct OnboardingView: View {
    
    
    /**
            Onboarding States
     0. Wlecome
     1. Name
     2. Age
     3. Gender
     
     */
    
    // Onboarding inputs
    @State var onboardingStatus : Int = 0
    @State var name: String = ""
    @State var age : Double = 50
    @State var gender: String = ""
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    
    // For app storage
    @AppStorage("name") var currentUserName:String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignIn: Bool = false

    
    let transition : AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    var body: some View {
        
        ZStack {
            ZStack {
                switch onboardingStatus {
                case 0:
                    welcomeView
                        .transition(transition)
                case 1:
                    addNameView
                        .transition(transition)
                case 2:
                    addAgeView
                        .transition(transition)
                case 3:
                    addGenderView
                        .transition(transition)
                default :
                    RoundedRectangle(cornerRadius: 0)
                }
            }
            VStack {
                Spacer()
                bottomButton
            }
            .padding(10)
        }
        .alert(isPresented:$showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().background(.purple)
    }
}


// MARK: Component

extension OnboardingView {
    
    private var bottomButton: some View {
        
        Text(onboardingStatus == 0 ? "SIGN UP" :
                onboardingStatus == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
        }
    }

    private var welcomeView: some View {
        
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height:3)
                        .offset(y:5)
                    ,alignment: .bottom
                )
            
            Text("This is no #1 app to find match maker in the world. In this tutorial we are practicing app storgae ans other Swiftui technique. This is online ")
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameView : some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("Select your match")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            TextField("enter your name...", text: $name)
                .font(.headline)
                .frame(height:55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
                
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeView : some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("What's you age?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            )
                .accentColor(.white)
                .foregroundColor(.white)
                
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderView : some View {
        
        VStack(spacing: 40) {
            Spacer()
            Text("What's you Gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(
                selection:$gender,
                label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10),
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }) .pickerStyle(.menu)
                
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
}

// MARK: Functions

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // Check Inputs
        switch onboardingStatus {
        case 1:
            guard name.count > 3 else {
                showAlert(title: "Enter correct name, name must be greater than 3 character")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Gender not selected")
                return
            }
        default:
            break
        }
        if onboardingStatus == 3 {
            signIn()
        }
        else {
        
            withAnimation(.spring()) {
                 onboardingStatus += 1
            }
        }
    }
    
    
    func signIn() {
        
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
             currentUserSignIn = true
        }
    }
    func showAlert(title:String) {
        alertTitle = title
        showAlert.toggle()
    }
}
