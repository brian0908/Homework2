//
//  ContentView.swift
//  Homework2
//
//  Created by Brian Lee on 9/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background
            LinearGradient(colors: [.cyan.opacity(0.4), .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            // Ocean
            Rectangle()
                .fill(Color(red: 0x00/255, green: 0x72/255, blue: 0x82/255).opacity(0.9))
                .frame(height: 750)
                .frame(maxWidth: .infinity, alignment: .bottom)
                .ignoresSafeArea(edges: .bottom)
                .offset(y: 550)

            // Ground shadow
            Ellipse()
                .fill(.black.opacity(0.08))
                .frame(width: 260, height: 40)
                .offset(y: 180)

            // Ice cube platform
            ZStack {
                // Base ice block
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(
                        LinearGradient(colors: [
                            Color.white.opacity(0.95),
                            Color.cyan.opacity(0.25),
                            Color.blue.opacity(0.18)
                        ], startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .stroke(Color.white.opacity(0.6), lineWidth: 2)
                            .blendMode(.overlay)
                    )
                    .frame(width: 300, height: 100)
                    .offset(y: 200)
                    .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 6)
            }

            // Penguin group
            ZStack {
                // Feet
                HStack(spacing: 73) {
                    Capsule(style: .circular)
                        .fill(.orange)
                        .frame(width: 70, height: 28)
                        .rotationEffect(.degrees(8))
                    Capsule(style: .circular)
                        .fill(.orange)
                        .frame(width: 70, height: 28)
                        .rotationEffect(.degrees(-8))
                }
                .offset(y: 168)

                // Body
                Ellipse()
                    .fill(Color.black)
                    .frame(width: 220, height: 300)
                    .offset(y: 40)

                // Belly
                Ellipse()
                    .fill(Color.white)
                    .frame(width: 160, height: 220)
                    .offset(y: 40)

                // Wings
                Ellipse()
                    .fill(Color.black)
                    .frame(width: 70, height: 180)
                    .rotationEffect(.degrees(30))
                    .offset(x: -120, y: 30)
                Ellipse()
                    .fill(Color.black)
                    .frame(width: 70, height: 180)
                    .rotationEffect(.degrees(-30))
                    .offset(x: 120, y: 30)

                // Head (dark)
                Circle()
                    .fill(Color.black)
                    .frame(width: 150, height: 150)
                    .offset(y: -80)

                // Face mask
                Circle()
                    .fill(Color.white)
                    .frame(width: 120, height: 120)
                    .offset(y: -70)

                // Eyes
                HStack(spacing: 36) {
                    Circle()
                        .fill(Color.black)
                        .frame(width: 18, height: 18)
                    Circle()
                        .fill(Color.black)
                        .frame(width: 18, height: 18)
                }
                .offset(y: -80)

                // Eye highlights
                HStack(spacing: 45) {
                    Circle()
                        .fill(Color.white.opacity(0.9))
                        .frame(width: 6, height: 6)
                        .offset(x: -1, y: 3)
                    Circle()
                        .fill(Color.white.opacity(0.9))
                        .frame(width: 6, height: 6)
                        .offset(x: -1, y: 3)
                }
                .offset(y: -86)
                
                // Cheek blushes
                HStack(spacing: 60) {
                    Ellipse()
                        .fill(Color.yellow.opacity(0.6))
                        .frame(width: 20, height: 25)
                        .blur(radius: 1.5)
                    Ellipse()
                        .fill(Color.yellow.opacity(0.6))
                        .frame(width: 20, height: 25)
                        .blur(radius: 1.5)
                }
                .offset(y: -50)

                // Beak
                RoundedRectangle(cornerRadius: 6, style: .continuous)
                    .fill(Color.orange)
                    .frame(width: 22, height: 22)
                    .rotationEffect(.degrees(45))
                    .offset(y: -52)

                // Belly button
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                    .frame(width: 22, height: 22)
                    .offset(y: 90)
                
                Text("Emperor Penguin" )
                    .font(.largeTitle.bold())
                    .foregroundStyle(.blue.gradient)
                .offset(y: -270)
                
                Text("Aptenodytes forsteri")
                    .font(.title)
                    .italic()
                    .foregroundStyle(.blue.gradient)
                .offset(y: -230)
            }
        }
        .font(.system(size: 24, weight: .bold, design: .rounded))
    }
}

#Preview {
    ContentView()
}
