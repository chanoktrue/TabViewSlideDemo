//
//  ContentView.swift
//  TabViewSlideDemo
//
//  Created by Thongchai Subsaidee on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @Namespace var name
    
    var body: some View {
        VStack {
            
            Text("Menu")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding()
            
            HStack(spacing: 0) {
                
                
                Button  {
                    withAnimation(.spring() ) {
                        index = 0
                    }
                } label: {
                    
                    VStack {
                        
                        Text("Left")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 0 ? .red : .gray)
                        
                        ZStack {
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 5)
                            
                            if index == 0 {
                                Capsule()
                                    .fill(Color.red)
                                    .frame(height: 5)
                                    .matchedGeometryEffect(id: "Menu", in: name)
                            }
                        }
                    }
                                        
                }
                // Button

                
                
                Button  {
                    withAnimation(.spring()) {
                        index = 1
                    }
                } label: {
                    
                    VStack {
                        
                        Text("Right")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(index == 1 ? .green : .gray)
                        
                        ZStack {
                            Capsule()
                                .fill(Color.black.opacity(0.04))
                                .frame(height: 5)
                            
                            if index == 1 {
                                Capsule()
                                    .fill(Color.green)
                                    .frame(height: 5)
                                    .matchedGeometryEffect(id: "Menu", in: name)
                            }
                        }
                    }
                                        
                }
                // Button
                
 
            }
            
            if index == 0 {
                Rectangle()
                    .fill(Color.red)
            }else {
                Rectangle()
                    .fill(Color.green)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
