//
//  ContentView.swift
//  HowToCreateBreatheAnimation
//
//  Created by ramil on 18.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isCenter = true
    @State var isCenter2 = true
    var body: some View {
        VStack {
            ZStack {
                Spacer()
                
                // Orange group
                Group {
                    Circle()
                        .frame(width: 151, height: 501)
                        .foregroundColor(Color.blue.opacity(0.5))
                        .offset(x: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))
                    
                    Circle()
                        .frame(width: 151, height: 501)
                        .foregroundColor(Color.blue.opacity(0.5))
                        .offset(x: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))

                    Circle()
                        .frame(width: 151, height: 501)
                        .foregroundColor(Color.blue.opacity(0.5))
                        .offset(y: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))

                    Circle()
                        .frame(width: 151, height: 501)
                        .foregroundColor(Color.blue.opacity(0.5))
                        .offset(y: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))
                }
                
                // Purple group
                Group {
                    Circle()
                        .frame(width: 450, height: 150)
                        .foregroundColor(Color.purple.opacity(0.5))
                        .offset(x: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                    
                    Circle()
                        .frame(width: 450, height: 150)
                        .foregroundColor(Color.purple.opacity(0.5))
                        .offset(x: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 450, height: 150)
                        .foregroundColor(Color.purple.opacity(0.5))
                        .offset(y: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 450, height: 150)
                        .foregroundColor(Color.purple.opacity(0.5))
                        .offset(y: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                }
                
                // Orange group
                Group {
                    Circle()
                        .frame(width: 350, height: 150)
                        .foregroundColor(Color.orange.opacity(0.5))
                        .offset(x: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))
                    
                    Circle()
                        .frame(width: 350, height: 150)
                        .foregroundColor(Color.orange.opacity(0.5))
                        .offset(x: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))

                    Circle()
                        .frame(width: 350, height: 150)
                        .foregroundColor(Color.orange.opacity(0.5))
                        .offset(y: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))

                    Circle()
                        .frame(width: 350, height: 150)
                        .foregroundColor(Color.orange.opacity(0.5))
                        .offset(y: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 360 : 0))
                }
                
                // Pink group
                Group {
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.pink.opacity(0.5))
                        .offset(x: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                    
                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.pink.opacity(0.5))
                        .offset(x: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.pink.opacity(0.5))
                        .offset(y: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 150, height: 150)
                        .foregroundColor(Color.pink.opacity(0.5))
                        .offset(y: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                }
                
                // Red group
                Group {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(x: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                    
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(x: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(y: isCenter ? 0 : 50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))

                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.red.opacity(0.5))
                        .offset(y: isCenter ? 0 : -50)
                        .rotationEffect(Angle(degrees: isCenter2 ? 0 : 360))
                }
                
                
                Circle()
                    .frame(width: isCenter ? 149 : 199, height: isCenter ? 149 : 199)
                    .foregroundColor(.white)
                
                Text("Breathe")
                    .font(.custom("Georgia", size: 42))  
                    .foregroundColor(.gray)
                
                
                
            }
            
            .onAppear() {
                let animation = Animation.linear(duration: 3)
                withAnimation(animation.repeatForever(autoreverses: true)) {
                    self.isCenter = false
                }
                withAnimation(animation.repeatForever(autoreverses: true)) {
                    self.isCenter2 = false
                }
            }
            
            
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
