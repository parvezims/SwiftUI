//
//  SoundBoorcamp.swift
//  SwiftContinueLearningIntermediate
//
//  Created by Mohammad.Parvez on 27/09/22.
//

import SwiftUI
import AVKit

class SoundManager : ObservableObject {
    static let soundManager = SoundManager()
    var player : AVAudioPlayer?
    
    func playSound(_ name: String) {
        
        guard let url = Bundle.main.url(forResource: name, withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        }
        catch let error {
            print(error.localizedDescription)
        }
    }
}


struct SoundBoorcamp: View {
    
    //@StateObject var soundManager = SoundManager()
    var body: some View {

        VStack (spacing: 20) {
            Button("Play") {
                SoundManager.soundManager.playSound("mini-train-ride-sounds")
            }
            Button("Play Other audio") {
                SoundManager.soundManager.playSound("morning-birds-singing")
            }.padding()
        }
    }
}

struct SoundBoorcamp_Previews: PreviewProvider {
    static var previews: some View {
        SoundBoorcamp()
    }
}
