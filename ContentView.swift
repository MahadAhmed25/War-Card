//
//  ContentView.swift
//  War Card Game
//
//  Created by Mahad Ahmed on 2023-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card7"
    @State private var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack() {
                
                Spacer()
                Image("logo")
                
                Spacer()
            
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                

                Button {
                    
                    //generate a random num from 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update the card
                    playerCard = "card"+String(playerRand)
                    cpuCard = "card"+String(cpuRand)
                    
                    //update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    else{
                        //do nothing
                    }
                    
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
            .padding()
            
        }
                
        
    }
    
    func deal(){
        print("Deal cards")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
