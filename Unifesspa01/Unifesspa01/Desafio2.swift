//
//  Desafio2.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 17/01/24.
//

import SwiftUI

struct Desafio2: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .frame(width: 400, height: 250)
            Spacer()
            Image("caminhao")
                .resizable()
                .frame(width: 400, height: 250)
                .clipShape(Circle())
            Text("HackaTruck")
                .foregroundStyle(.blue)
                .font(.largeTitle)
                .bold()
                .padding(.top, -210.0)
            Spacer()
            HStack{
                Text("Maker")
                    .foregroundStyle(.yellow)
                    .font(.title)
                    .bold()
                Text("Space")
                    .foregroundStyle(.red)
                    .font(.title)
                    .bold()
            }.frame(width: 250, height: 110)
            .background(.black)
        }
    }
}

struct Desafio2_Previews: PreviewProvider {
    static var previews: some View {
        Desafio2()
    }
}
