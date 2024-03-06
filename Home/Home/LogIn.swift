//
//  LogIn.swift
//  Home
//
//  Created by Nujud Alotaibi on 18/08/1445 AH.
//

import SwiftUI
struct LogIn: View {
    @Binding var showShowLogin : Bool
    @Binding var Loginquantity: Int
    @State private var OnTime = true
    @State var p = 0
    @State private var currentDate = Date()
    
    let colors = [Color(.blue).opacity(0.2), Color(.purple).opacity(0.2), Color(.white).opacity(0.2)]

    var body : some  View {
        
        NavigationView {
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                   
                VStack{
                    Text("Welcome").padding(.top,-205)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                        
                    Text("To your Task Mangement Area").padding(.top,-190)
                        .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                        
                    
                    
                    VStack  (alignment:.leading)
                    {
                        Image(systemName: "person.circle.fill") // Profile
                        
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundColor(Color(red: 0.13333333333333333, green: 0.2823529411764706, blue: 0.6, opacity: 0.503))
                            .padding(.leading,6)
                            .padding(.top,-193)
                        VStack{
                            
                            Text("Login")
                                .font(.title)
                                .fontWeight(.bold)
                                .font(.largeTitle)
                                .padding(.top,-195)
                                .padding(.leading,-110)
                                .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                            
                            VStack{
                                Text("E-mail")
                                    .padding(.leading,-170)
                                    .padding(.top,-150)
                                    .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                                
                                TextField("Emile", text: .constant(""))
                                    .frame(width:330,height:40)
                                    .border(Color(.white))
                                    .background(.white)
                                    .cornerRadius(5.0)
                                    .padding(.leading,-10)
                                    .padding(.top,-150)
                                
                                
                                    .padding()
                                
                                
                                Text("password")
                                    .padding(.leading,-170)
                                    .padding(.top,-120)
                                    .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                                
                                TextField("password", text: .constant(""))
                                    .frame(width:330,height:40)
                                    .border(Color(.white))
                                    .background(.white)
                                    .cornerRadius(5.0)
                                    .padding(.leading,-10)
                                    .padding(.top,-120)
                                    .padding()
                                
                                Button(action: {}) {
                                    Text("Login")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width : 150, height: 60)
                                        .background(Color(red: 0.451, green: 0.19215686274509805, blue: 0.8705882352941177 ))
                                        .cornerRadius(35.0)
                                        .padding(.top,-70)
                                }
                         
                                
                                
                                HStack{
                                    Text("Don’t have an account?")
                                    Button(action: {}) {
                                        Text("Sign up")
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red: 0.133, green: 0.2823529411764706, blue: 0.6))
                                            
                                    }
                                }
                                
                              
                                
                                ZStack{
                                    Divider()
                                    Text("OR")
                                        .offset(x: 0, y: -1.0)
                                }
                                .frame(height: 5)
                                .padding(.top,20)
                              
                                
                                
                                      
                                        HStack(spacing: 35){
                                            Button(action: {}) {
                                              Image("facebook")}
                                            Button(action: {}) {
                                                Image("Apple")}
                                            Button(action: {}) {
                                                Image("google")}
                                            
                                        }
                                        .padding(.top,30)
                                    
                                    
                                
                                
                                
                                
                            }
                           // .padding(.top,-)
                            
                            
                            
                            
                            
                        }
                        
                    }
                    .padding()
                }
                
                
                
                
                
                        .toolbar{
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button("Cancel"){
                                    showShowLogin .toggle()
                                }
                            }
                        }// End toolbar Cancle
                    
                        .toolbar{
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button("Done"){
                                    showShowLogin .toggle()
                                }
                            }
                            
                        }// End toolbar done
                    
                .font(.title2)
            }// ENd Zstack
        }// End Negation
        .onAppear{
            calculatePrice(Loginquantity:Loginquantity)
            
        } // End onAppear
    } //End Body
        
        
    
    func calculatePrice (Loginquantity:Int){
        var price=10
        price = price * Loginquantity
        print("\(price)")
        
    } // END func
    
}// End LogIn
                
            
            
        
        
    

