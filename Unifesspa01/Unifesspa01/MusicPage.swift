
import SwiftUI

struct MusicPage: View {
    
    var music : Song
    
    var body: some View {
        ZStack{
            Image("fundo").resizable().edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack{
                    Image("\(music.capa)")
                        .resizable()
                        .frame(width: 300, height: 300)
                    Text("\(music.name)")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    Text("\(music.artist)")
                        .foregroundStyle(.white)
                }
                
                HStack{
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    Spacer()
                    
                    Image(systemName: "play.circle.fill").resizable()
                        .frame(width: 60, height: 60)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "gobackward.minus")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.white)
    
                        
                }.padding(.all, 40.0)
            }
            
        }
    }
}

#Preview {
    MusicPage(music: arrayMusics[0])
}
