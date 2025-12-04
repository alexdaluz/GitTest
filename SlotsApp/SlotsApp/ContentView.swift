//
//  ContentView.swift
//  SlotsApp
//
//  Created by Alexander Da Luz on 12/4/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Game State
    
    @State private var credits = 1000
    
    // The available symbol names (must match image asset names)
    @State private var symbols = ["apple", "cherry", "star"]
    
    // 9 slots (indexes into symbols array)
    @State private var numbers = Array(repeating: 0, count: 9)
    
    // Background color for each card
    @State private var backgrounds = Array(repeating: Color.white, count: 9)
    
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, Color.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                // Title
                Text("SwiftUI Slots")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // Credits display
                Text("Credits: \(credits)")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 8)
                    .background(Color.black.opacity(0.6))
                    .cornerRadius(12)
                
                // 3 × 3 grid
                VStack(spacing: 10) {
                    HStack(spacing: 10) {
                        CardView(symbol: symbols[numbers[0]],
                                 background: backgrounds[0])
                        CardView(symbol: symbols[numbers[1]],
                                 background: backgrounds[1])
                        CardView(symbol: symbols[numbers[2]],
                                 background: backgrounds[2])
                    }
                    HStack(spacing: 10) {
                        CardView(symbol: symbols[numbers[3]],
                                 background: backgrounds[3])
                        CardView(symbol: symbols[numbers[4]],
                                 background: backgrounds[4])
                        CardView(symbol: symbols[numbers[5]],
                                 background: backgrounds[5])
                    }
                    HStack(spacing: 10) {
                        CardView(symbol: symbols[numbers[6]],
                                 background: backgrounds[6])
                        CardView(symbol: symbols[numbers[7]],
                                 background: backgrounds[7])
                        CardView(symbol: symbols[numbers[8]],
                                 background: backgrounds[8])
                    }
                }
                
                // Spin button
                Button(action: {
                    spinAll()
                }) {
                    Text("Spin All")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 12)
                        .background(Color.red)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding()
        }
    }
    
    // MARK: - Game Logic
    
    func spinAll() {
        // Reset all backgrounds to white
        for i in backgrounds.indices {
            backgrounds[i] = Color.white
        }
        
        // Randomize all 9 slots
        for i in numbers.indices {
            numbers[i] = Int.random(in: 0 ..< symbols.count)
        }
        
        // Assume we lose first
        var matchesFound = 0
        
        // Check each row for a match (3 in a row)
        // Row 1: 0,1,2
        if numbers[0] == numbers[1] && numbers[1] == numbers[2] {
            matchesFound += 1
            highlight(indices: [0, 1, 2])
        }
        
        // Row 2: 3,4,5
        if numbers[3] == numbers[4] && numbers[4] == numbers[5] {
            matchesFound += 1
            highlight(indices: [3, 4, 5])
        }
        
        // Row 3: 6,7,8
        if numbers[6] == numbers[7] && numbers[7] == numbers[8] {
            matchesFound += 1
            highlight(indices: [6, 7, 8])
        }
        
        // You could also check columns / diagonals if you want more matches.
        // For now we'll keep it simple: only rows.
        
        if matchesFound > 0 {
            // Reward per matching line
            credits += matchesFound * 50
        } else {
            // No matches → lose credits
            credits -= 10
        }
    }
    
    func highlight(indices: [Int]) {
        for i in indices {
            backgrounds[i] = Color.green
        }
    }
}

struct CardView: View {
    
    var symbol: String
    var background: Color
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(background)
                .cornerRadius(10)
                .shadow(radius: 5)
            
            Image(symbol)
                .resizable()
                .scaledToFit()
                .padding(8)
        }
        .frame(width: 80, height: 80)
    }
}

#Preview {
    ContentView()
}

