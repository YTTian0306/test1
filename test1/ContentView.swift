//
//  ContentView.swift
//  test1
//
//  Created by 田煜童 on 2024/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp:true)
            CardView(isFaceUp:true)
            
            CardView(isFaceUp:true)
            CardView(isFaceUp:true)
        }

//        .renderingMode(.template)
//        .imageScale(.large)
        .foregroundColor(.black)
        .padding()
    }
}

struct CardView: View{
    @State var isFaceUp : Bool
    var body: some View{
        ZStack {
            var base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth:2)
                Text("😇").font(.largeTitle)
            } else{
                base.foregroundColor(.black)
            }
    }
        .onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}
#Preview {
    ContentView()
}
