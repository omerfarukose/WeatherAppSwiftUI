//
//  WeathetView.swift
//  WeatherAppSwiftUI
//
//  Created by Ömer Faruk KÖSE on 18.12.2021.
//

import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(weather.name)
                        .bold().font(.title)
                    Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                        .fontWeight(.light)
                    
                }
                .frame(maxWidth:.infinity,alignment: .leading)
                VStack{
                    HStack{
                        VStack(spacing:20){
                            Image(systemName: "smoke.fill")
                            .font(.system(size: 40))
                            
                            Text(weather.weather[0].main)
                        }
                        Spacer()
                        .frame(width: 150, alignment: .leading)
                        Text(weather.main.feels_like.roundDouble() + "°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height:300)
                    
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: 20){
                    Text("Weather Now:")
                        .bold().padding().padding(.bottom)
                    HStack{
                        WeatherRow(logo: "thermometer", name: " En Düşük Sıcaklık", value: (weather.main.tempMin.roundDouble() + "°"))
                        Spacer()
                            WeatherRow(logo: "thermometer", name: "En Yüksek Temp", value: (weather.main.temp.roundDouble() + "°"))
                    }
                    HStack{
                        WeatherRow(logo: "wind", name: "Rüzgar", value: (weather.wind.speed.roundDouble() + "m/s"))
                        Spacer()
                        WeatherRow(logo: "humidity", name: "Nem Oranı         ", value: (weather.main.humidity.roundDouble() + "%"))

                    }
                }
                .frame(maxWidth: .infinity , alignment: .center)
                .padding()
                .padding(.bottom,20)
                .foregroundColor(Color(hue: 0.65, saturation: 0.73, brightness: 0.86))
                .background(.white)
                .cornerRadius(20)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(red: 0.205, green: 0.277, blue: 0.465))
            .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
