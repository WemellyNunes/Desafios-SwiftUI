//
//  screanLogin.swift
//  Unifesspa01
//
//  Created by Turma01-25 on 18/01/24.
//

import SwiftUI

let colors: [Color] =
    [.red, .orange, .yellow]

struct screanLogin: View {
    var body: some View {
        VStack {
            
            Text("Username")
            
            
            ZStack {
                ForEach(0..<colors.count) {
                    Rectangle()
                        .fill(colors[$0])
                        .frame(width: 100, height: 100)
                        .offset(x: CGFloat($0) * 10.0,
                                y: CGFloat($0) * 10.0)
                }
                
            }
        }
    }
}

struct screanLogin_Previews: PreviewProvider {
    static var previews: some View {
        screanLogin()
    }
}


// Zstack
