//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mohamed Makhlouf Ahmed on 28/12/2022.
//

import SwiftUI

struct ContentView: View {
   @State var leftDice = 1
   @State var rightDice = 1
    
    var body: some View {
                ZStack{
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    VStack {
                        Image("diceeLogo")
                        Spacer()
                        HStack{
                            diceView(n : leftDice)
                            diceView(n : rightDice)
                        }
                        .padding(.horizontal)
                        Spacer()
                        Button("Roll") {
                            self.leftDice = Int.random(in: 1...6)
                            self.rightDice = Int.random(in: 1...6)
                        }
                        .font(.system(size: 50))
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .background(Color(red: 0.607, green: 0.11, blue: 0.119))
                        .foregroundColor(.white)
                       // .cornerRadius(20)
                        Spacer()
            }
        }
        
    }
}

struct diceView: View {
    var n : Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


