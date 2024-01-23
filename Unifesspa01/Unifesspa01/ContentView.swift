//
//  ContentView.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            Image("caminhao")
                .resizable()
                .frame(width: 350, height: 550)
                
            Text("HackaTruck")
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .bold()
            HStack{
                Text("Maker")
                    .foregroundStyle(.yellow)
                    .font(.title)
                    .bold()
                Text("Space")
                    .foregroundStyle(.red)
                    .font(.title)
                    .bold()
            }
        
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
