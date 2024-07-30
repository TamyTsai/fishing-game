//
//  ContentView.swift
//  Fishing
//
//  Created by 蔡婷羽 on 2021/8/17.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisiable = false

    @State private var sliderValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎣🎣🎣\n讓魚竿盡可能接近魚")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target) + "公尺")
                .font(.largeTitle)
                .fontWeight(.black)
                .bold()
                .kerning(-1.0)
            
            HStack {
                Text("1公尺")
                    .bold()
                    .fontWeight(.black)
                    .font(.body)
                Slider(value: $sliderValue, in:1.0...100.0)
                Text("100公尺")
                    .bold()
                    .fontWeight(.black)
                    .font(.body)
            }
            Button(action: {
                print("你好，Swift UI")
                alertIsVisiable = true
            }) {
                Text("點我")
            }
            .alert(isPresented: $alertIsVisiable, content: {
                let roundedValue = Int(sliderValue.rounded())
                return Alert(title: Text("提示"), message: Text("滑塊的值是\(roundedValue)。\n" + "你本輪獲得了\(game.points(sliderValue: roundedValue))分"), dismissButton: .default(Text("取消")))
            })
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
            
        ContentView()
            .previewLayout(.fixed(width: 926, height: 428))
    }
}
}
