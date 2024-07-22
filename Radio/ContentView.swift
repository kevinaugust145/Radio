//
//  ContentView.swift
//  Radio
//
//  Created by 洪宗燦 on 2024/7/22.
//



import SwiftUI
import AVKit

struct RadioPlayerView: View {
    private let player = AVPlayer(url: URL(string: "https://www.radiotaiwan.tw/zhong-guang-yin-le-wang-i-radio-fm963")!)

    var body: some View {
        VStack {
            Text("中廣音樂網")
                .font(.largeTitle)
                .padding()

            Button(action: {
                player.play()
            }) {
                Text("播放")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                player.pause()
            }) {
                Text("暫停")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .onDisappear {
            player.pause()
        }
    }
}

struct ContentView: View {
    var body: some View {
        RadioPlayerView()
    }
}

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
