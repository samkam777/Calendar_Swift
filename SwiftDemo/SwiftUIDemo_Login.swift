//
//  SwiftUIDemo_Login.swift
//  calendar
//
//  Created by samkam on 2024/1/23.
//

import SwiftUI

struct SwiftUIDemo_Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    var body: some View {
        VStack{
            Spacer()
            Image("八方吉历图标")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
            HStack(){
                Text("欢迎来到八方吉历")
                    .font(.title)
                    .padding()
    //                .frame(maxWidth: 389, maxHeight:60, alignment: .topLeading) // 设置框架大小和位置
                Spacer()
            }
            
            VStack{
                TextField("您的电子邮箱或电话号码", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                HStack{
                    if isPasswordVisible{
                        TextField("密码", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
//                            .textFieldStyle(PlainTextFieldStyle())
                    }else{
                        SecureField("密码", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    }
                    Button(action: {
                        isPasswordVisible.toggle()
                    }){
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                    }
                    .padding(.trailing, 8)
                }
                .padding()
                
                Text("忘记密码？")
                    .underline()
                    .onTapGesture {
                        // 处理重置密码请求
                    }
            }
            HStack{
                Button(action: {
                    // 处理登录逻辑
                }){
                    Text("登录")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 330, height: 60.0)
                        .background(Color(red: 0.86, green: 0.15, blue: 0.12))
                        .cornerRadius(10)
                    
                }
    //            .frame(width: 200, height: 50) // 设置宽度和高度
    ////            .padding(top: 10, leading: 20, bottom: 5, trailing: 15)
                .padding()
    //            .overlay(
    //                RoundedRectangle(cornerRadius: 10)
    //                    .fill(Color(red: 0.86, green: 0.15, blue: 0.12))
    //                    .frame(width: 200, height: 50)
    //                    .cornerRadius(10)
    //            )
            }
            
            
            HStack{
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding()
                Text("第三方登录")
                    .font(.subheadline)
                    .padding()
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                    .padding()
            }
            
//            ZStack{
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 50, height: 50)
//                Image("message.fill")
//                    .resizable()
//                    .renderingMode(.template)
////                    .foregroundColor(Color.red)
//                    .frame(width: 100, height: 100)
//
//            }
            Image("message.fill")
                .resizable()
//                .renderingMode(.template)
                .frame(width: 100, height: 100)
                .cornerRadius(25) // 可选：添加圆角效果
            .onTapGesture {
                // 处理微信登录
            }
            
            Spacer()
            
            Text("创建您的账号")
                .underline()
                .onTapGesture {
                    // 处理创建账号
                }
        }
    }
}

struct SwiftUIDemo_Login_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIDemo_Login()
    }
}
