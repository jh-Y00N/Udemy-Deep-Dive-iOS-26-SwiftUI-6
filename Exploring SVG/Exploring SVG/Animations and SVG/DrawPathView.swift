//
//  DrawPathView.swift
//  Exploring SVG
//
//  Created by JIHYEON YOON on 4/20/26.
//

import SwiftUI

struct DrawPathView<ShapeType: Shape>: View {
    var linearGradient: LinearGradient {
        return LinearGradient(colors: [.purple, .red, .pink], startPoint: .topLeading, endPoint: .bottomTrailing)
    }
    
    let shape: ShapeType
    @State private var rotation = 0.0
    
    var body: some View {
        shape
            .trim(from: 0, to: rotation / 360)
//            .foregroundStyle(linearGradient)
            .stroke(linearGradient, style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
            .hueRotation(.degrees(rotation))
            .frame(width: 100, height: 100)
            .onAppear {
                withAnimation(.linear(duration: 3).repeatForever(autoreverses: false)) {
                    rotation = 360
                }
            }
    }
}

struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.87375*width, y: 0.46758*height))
        path.addLine(to: CGPoint(x: 0.825*width, y: 0.46758*height))
        path.addCurve(to: CGPoint(x: 0.72837*width, y: 0.47644*height), control1: CGPoint(x: 0.77453*width, y: 0.46758*height), control2: CGPoint(x: 0.74929*width, y: 0.46758*height))
        path.addCurve(to: CGPoint(x: 0.66851*width, y: 0.53389*height), control1: CGPoint(x: 0.70746*width, y: 0.48531*height), control2: CGPoint(x: 0.69447*width, y: 0.5015*height))
        path.addLine(to: CGPoint(x: 0.66662*width, y: 0.53624*height))
        path.addCurve(to: CGPoint(x: 0.61274*width, y: 0.58125*height), control1: CGPoint(x: 0.64244*width, y: 0.56641*height), control2: CGPoint(x: 0.63034*width, y: 0.5815*height))
        path.addCurve(to: CGPoint(x: 0.56116*width, y: 0.53475*height), control1: CGPoint(x: 0.59515*width, y: 0.581*height), control2: CGPoint(x: 0.58381*width, y: 0.56559*height))
        path.addLine(to: CGPoint(x: 0.45851*width, y: 0.39508*height))
        path.addCurve(to: CGPoint(x: 0.40995*width, y: 0.35128*height), control1: CGPoint(x: 0.43739*width, y: 0.36633*height), control2: CGPoint(x: 0.42683*width, y: 0.35196*height))
        path.addCurve(to: CGPoint(x: 0.35537*width, y: 0.39091*height), control1: CGPoint(x: 0.39308*width, y: 0.35059*height), control2: CGPoint(x: 0.38051*width, y: 0.36403*height))
        path.addLine(to: CGPoint(x: 0.33816*width, y: 0.40932*height))
        path.addCurve(to: CGPoint(x: 0.2783*width, y: 0.45986*height), control1: CGPoint(x: 0.31146*width, y: 0.43787*height), control2: CGPoint(x: 0.29811*width, y: 0.45214*height))
        path.addCurve(to: CGPoint(x: 0.18865*width, y: 0.46758*height), control1: CGPoint(x: 0.25849*width, y: 0.46758*height), control2: CGPoint(x: 0.23521*width, y: 0.46758*height))
        path.addLine(to: CGPoint(x: 0.14375*width, y: 0.46758*height))
        path.move(to: CGPoint(x: 0.5*width, y: 0.22919*height))
        path.addLine(to: CGPoint(x: 0.47748*width, y: 0.25086*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.26044*height), control1: CGPoint(x: 0.48337*width, y: 0.25698*height), control2: CGPoint(x: 0.4915*width, y: 0.26044*height))
        path.addCurve(to: CGPoint(x: 0.52252*width, y: 0.25086*height), control1: CGPoint(x: 0.5085*width, y: 0.26044*height), control2: CGPoint(x: 0.51663*width, y: 0.25698*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.22919*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.11069*width, y: 0.55818*height))
        path.addCurve(to: CGPoint(x: 0.15374*width, y: 0.5682*height), control1: CGPoint(x: 0.11982*width, y: 0.57283*height), control2: CGPoint(x: 0.13909*width, y: 0.57732*height))
        path.addCurve(to: CGPoint(x: 0.16375*width, y: 0.52515*height), control1: CGPoint(x: 0.16839*width, y: 0.55907*height), control2: CGPoint(x: 0.17287*width, y: 0.5398*height))
        path.addLine(to: CGPoint(x: 0.11069*width, y: 0.55818*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.27207*width, y: 0.65716*height))
        path.addCurve(to: CGPoint(x: 0.22788*width, y: 0.65721*height), control1: CGPoint(x: 0.25985*width, y: 0.64497*height), control2: CGPoint(x: 0.24007*width, y: 0.64499*height))
        path.addCurve(to: CGPoint(x: 0.22793*width, y: 0.7014*height), control1: CGPoint(x: 0.21569*width, y: 0.66943*height), control2: CGPoint(x: 0.21571*width, y: 0.68922*height))
        path.addLine(to: CGPoint(x: 0.27207*width, y: 0.65716*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.11458*width, y: 0.38071*height))
        path.addCurve(to: CGPoint(x: 0.23247*width, y: 0.16655*height), control1: CGPoint(x: 0.11458*width, y: 0.26392*height), control2: CGPoint(x: 0.16697*width, y: 0.19146*height))
        path.addCurve(to: CGPoint(x: 0.47748*width, y: 0.25086*height), control1: CGPoint(x: 0.29814*width, y: 0.14156*height), control2: CGPoint(x: 0.38964*width, y: 0.15959*height))
        path.addLine(to: CGPoint(x: 0.52252*width, y: 0.20752*height))
        path.addCurve(to: CGPoint(x: 0.21025*width, y: 0.10813*height), control1: CGPoint(x: 0.42287*width, y: 0.10399*height), control2: CGPoint(x: 0.30603*width, y: 0.0717*height))
        path.addCurve(to: CGPoint(x: 0.05208*width, y: 0.38071*height), control1: CGPoint(x: 0.11429*width, y: 0.14463*height), control2: CGPoint(x: 0.05208*width, y: 0.24533*height))
        path.addLine(to: CGPoint(x: 0.11458*width, y: 0.38071*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.64594*width, y: 0.8125*height))
        path.addCurve(to: CGPoint(x: 0.84192*width, y: 0.62433*height), control1: CGPoint(x: 0.70812*width, y: 0.76348*height), control2: CGPoint(x: 0.78265*width, y: 0.69775*height))
        path.addCurve(to: CGPoint(x: 0.94792*width, y: 0.38071*height), control1: CGPoint(x: 0.90052*width, y: 0.55172*height), control2: CGPoint(x: 0.94792*width, y: 0.46704*height))
        path.addLine(to: CGPoint(x: 0.88542*width, y: 0.38071*height))
        path.addCurve(to: CGPoint(x: 0.79329*width, y: 0.58507*height), control1: CGPoint(x: 0.88542*width, y: 0.44533*height), control2: CGPoint(x: 0.84907*width, y: 0.51595*height))
        path.addCurve(to: CGPoint(x: 0.60725*width, y: 0.76341*height), control1: CGPoint(x: 0.73817*width, y: 0.65336*height), control2: CGPoint(x: 0.66766*width, y: 0.71578*height))
        path.addLine(to: CGPoint(x: 0.64594*width, y: 0.8125*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.94792*width, y: 0.38071*height))
        path.addCurve(to: CGPoint(x: 0.78975*width, y: 0.10813*height), control1: CGPoint(x: 0.94792*width, y: 0.24533*height), control2: CGPoint(x: 0.88571*width, y: 0.14463*height))
        path.addCurve(to: CGPoint(x: 0.47748*width, y: 0.20752*height), control1: CGPoint(x: 0.69397*width, y: 0.0717*height), control2: CGPoint(x: 0.57713*width, y: 0.10399*height))
        path.addLine(to: CGPoint(x: 0.52252*width, y: 0.25086*height))
        path.addCurve(to: CGPoint(x: 0.76753*width, y: 0.16655*height), control1: CGPoint(x: 0.61036*width, y: 0.15959*height), control2: CGPoint(x: 0.70185*width, y: 0.14156*height))
        path.addCurve(to: CGPoint(x: 0.88542*width, y: 0.38071*height), control1: CGPoint(x: 0.83303*width, y: 0.19146*height), control2: CGPoint(x: 0.88542*width, y: 0.26392*height))
        path.addLine(to: CGPoint(x: 0.94792*width, y: 0.38071*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.35406*width, y: 0.81249*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.88483*height), control1: CGPoint(x: 0.40715*width, y: 0.85435*height), control2: CGPoint(x: 0.44375*width, y: 0.88483*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.82233*height))
        path.addCurve(to: CGPoint(x: 0.39275*width, y: 0.76341*height), control1: CGPoint(x: 0.46955*width, y: 0.82233*height), control2: CGPoint(x: 0.45065*width, y: 0.80906*height))
        path.addLine(to: CGPoint(x: 0.35406*width, y: 0.81249*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.60725*width, y: 0.76341*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.82233*height), control1: CGPoint(x: 0.54935*width, y: 0.80906*height), control2: CGPoint(x: 0.53045*width, y: 0.82233*height))
        path.addLine(to: CGPoint(x: 0.5*width, y: 0.88483*height))
        path.addCurve(to: CGPoint(x: 0.64594*width, y: 0.8125*height), control1: CGPoint(x: 0.55625*width, y: 0.88483*height), control2: CGPoint(x: 0.59285*width, y: 0.85435*height))
        path.addLine(to: CGPoint(x: 0.60725*width, y: 0.76341*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.16375*width, y: 0.52515*height))
        path.addCurve(to: CGPoint(x: 0.11458*width, y: 0.38071*height), control1: CGPoint(x: 0.13267*width, y: 0.47523*height), control2: CGPoint(x: 0.11458*width, y: 0.4263*height))
        path.addLine(to: CGPoint(x: 0.05208*width, y: 0.38071*height))
        path.addCurve(to: CGPoint(x: 0.11069*width, y: 0.55818*height), control1: CGPoint(x: 0.05208*width, y: 0.44237*height), control2: CGPoint(x: 0.07627*width, y: 0.5029*height))
        path.addLine(to: CGPoint(x: 0.16375*width, y: 0.52515*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39275*width, y: 0.76341*height))
        path.addCurve(to: CGPoint(x: 0.27207*width, y: 0.65716*height), control1: CGPoint(x: 0.35455*width, y: 0.73329*height), control2: CGPoint(x: 0.31212*width, y: 0.69711*height))
        path.addLine(to: CGPoint(x: 0.22793*width, y: 0.7014*height))
        path.addCurve(to: CGPoint(x: 0.35406*width, y: 0.81249*height), control1: CGPoint(x: 0.27015*width, y: 0.74352*height), control2: CGPoint(x: 0.31451*width, y: 0.78131*height))
        path.addLine(to: CGPoint(x: 0.39275*width, y: 0.76341*height))
        path.closeSubpath()
        return path
    }
}

struct MySun: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.4841*width, y: 0.16776*height))
        path.addCurve(to: CGPoint(x: 0.51723*width, y: 0.13463*height), control1: CGPoint(x: 0.50258*width, y: 0.16776*height), control2: CGPoint(x: 0.51723*width, y: 0.15276*height))
        path.addLine(to: CGPoint(x: 0.51723*width, y: 0.03313*height))
        path.addCurve(to: CGPoint(x: 0.4841*width, y: 0), control1: CGPoint(x: 0.51723*width, y: 0.015*height), control2: CGPoint(x: 0.50258*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.45131*width, y: 0.03313*height), control1: CGPoint(x: 0.46596*width, y: 0), control2: CGPoint(x: 0.45131*width, y: 0.015*height))
        path.addLine(to: CGPoint(x: 0.45131*width, y: 0.13463*height))
        path.addCurve(to: CGPoint(x: 0.4841*width, y: 0.16776*height), control1: CGPoint(x: 0.45131*width, y: 0.15276*height), control2: CGPoint(x: 0.46596*width, y: 0.16776*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70836*width, y: 0.26123*height))
        path.addCurve(to: CGPoint(x: 0.75544*width, y: 0.26123*height), control1: CGPoint(x: 0.72126*width, y: 0.27379*height), control2: CGPoint(x: 0.74219*width, y: 0.27448*height))
        path.addLine(to: CGPoint(x: 0.82729*width, y: 0.18938*height))
        path.addCurve(to: CGPoint(x: 0.82729*width, y: 0.1423*height), control1: CGPoint(x: 0.84019*width, y: 0.17648*height), control2: CGPoint(x: 0.83984*width, y: 0.1552*height))
        path.addCurve(to: CGPoint(x: 0.78055*width, y: 0.1423*height), control1: CGPoint(x: 0.81438*width, y: 0.12974*height), control2: CGPoint(x: 0.79346*width, y: 0.12939*height))
        path.addLine(to: CGPoint(x: 0.70836*width, y: 0.2145*height))
        path.addCurve(to: CGPoint(x: 0.70836*width, y: 0.26123*height), control1: CGPoint(x: 0.69545*width, y: 0.2274*height), control2: CGPoint(x: 0.6958*width, y: 0.24833*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.80113*width, y: 0.48549*height))
        path.addCurve(to: CGPoint(x: 0.83426*width, y: 0.51827*height), control1: CGPoint(x: 0.80113*width, y: 0.50363*height), control2: CGPoint(x: 0.81613*width, y: 0.51827*height))
        path.addLine(to: CGPoint(x: 0.93541*width, y: 0.51827*height))
        path.addCurve(to: CGPoint(x: 0.96854*width, y: 0.48549*height), control1: CGPoint(x: 0.95354*width, y: 0.51827*height), control2: CGPoint(x: 0.96854*width, y: 0.50363*height))
        path.addCurve(to: CGPoint(x: 0.93541*width, y: 0.45236*height), control1: CGPoint(x: 0.96854*width, y: 0.46735*height), control2: CGPoint(x: 0.95354*width, y: 0.45236*height))
        path.addLine(to: CGPoint(x: 0.83426*width, y: 0.45236*height))
        path.addCurve(to: CGPoint(x: 0.80113*width, y: 0.48549*height), control1: CGPoint(x: 0.81613*width, y: 0.45236*height), control2: CGPoint(x: 0.80113*width, y: 0.46735*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70836*width, y: 0.70975*height))
        path.addCurve(to: CGPoint(x: 0.70836*width, y: 0.75649*height), control1: CGPoint(x: 0.6958*width, y: 0.72266*height), control2: CGPoint(x: 0.69545*width, y: 0.74393*height))
        path.addLine(to: CGPoint(x: 0.78055*width, y: 0.82868*height))
        path.addCurve(to: CGPoint(x: 0.82729*width, y: 0.82834*height), control1: CGPoint(x: 0.79346*width, y: 0.84159*height), control2: CGPoint(x: 0.81438*width, y: 0.84089*height))
        path.addCurve(to: CGPoint(x: 0.82729*width, y: 0.78195*height), control1: CGPoint(x: 0.83984*width, y: 0.81543*height), control2: CGPoint(x: 0.84019*width, y: 0.7945*height))
        path.addLine(to: CGPoint(x: 0.75509*width, y: 0.70975*height))
        path.addCurve(to: CGPoint(x: 0.70836*width, y: 0.70975*height), control1: CGPoint(x: 0.74219*width, y: 0.6972*height), control2: CGPoint(x: 0.72126*width, y: 0.6972*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4841*width, y: 0.80322*height))
        path.addCurve(to: CGPoint(x: 0.45131*width, y: 0.83601*height), control1: CGPoint(x: 0.46596*width, y: 0.80322*height), control2: CGPoint(x: 0.45131*width, y: 0.81787*height))
        path.addLine(to: CGPoint(x: 0.45131*width, y: 0.9375*height))
        path.addCurve(to: CGPoint(x: 0.4841*width, y: 0.97063*height), control1: CGPoint(x: 0.45131*width, y: 0.95599*height), control2: CGPoint(x: 0.46596*width, y: 0.97063*height))
        path.addCurve(to: CGPoint(x: 0.51723*width, y: 0.9375*height), control1: CGPoint(x: 0.50258*width, y: 0.97063*height), control2: CGPoint(x: 0.51723*width, y: 0.95599*height))
        path.addLine(to: CGPoint(x: 0.51723*width, y: 0.83601*height))
        path.addCurve(to: CGPoint(x: 0.4841*width, y: 0.80322*height), control1: CGPoint(x: 0.51723*width, y: 0.81787*height), control2: CGPoint(x: 0.50258*width, y: 0.80322*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.26018*width, y: 0.70975*height))
        path.addCurve(to: CGPoint(x: 0.2131*width, y: 0.70975*height), control1: CGPoint(x: 0.24728*width, y: 0.6972*height), control2: CGPoint(x: 0.226*width, y: 0.6972*height))
        path.addLine(to: CGPoint(x: 0.14125*width, y: 0.7816*height))
        path.addCurve(to: CGPoint(x: 0.1409*width, y: 0.82799*height), control1: CGPoint(x: 0.12835*width, y: 0.79415*height), control2: CGPoint(x: 0.1287*width, y: 0.81508*height))
        path.addCurve(to: CGPoint(x: 0.18764*width, y: 0.82834*height), control1: CGPoint(x: 0.15381*width, y: 0.84054*height), control2: CGPoint(x: 0.17508*width, y: 0.84124*height))
        path.addLine(to: CGPoint(x: 0.25984*width, y: 0.75649*height))
        path.addCurve(to: CGPoint(x: 0.26018*width, y: 0.70975*height), control1: CGPoint(x: 0.27239*width, y: 0.74393*height), control2: CGPoint(x: 0.27239*width, y: 0.72266*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.16706*width, y: 0.48549*height))
        path.addCurve(to: CGPoint(x: 0.13428*width, y: 0.45236*height), control1: CGPoint(x: 0.16706*width, y: 0.46735*height), control2: CGPoint(x: 0.15241*width, y: 0.45236*height))
        path.addLine(to: CGPoint(x: 0.03313*width, y: 0.45236*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.48549*height), control1: CGPoint(x: 0.015*width, y: 0.45236*height), control2: CGPoint(x: 0, y: 0.46735*height))
        path.addCurve(to: CGPoint(x: 0.03313*width, y: 0.51827*height), control1: CGPoint(x: 0, y: 0.50363*height), control2: CGPoint(x: 0.015*width, y: 0.51827*height))
        path.addLine(to: CGPoint(x: 0.13428*width, y: 0.51827*height))
        path.addCurve(to: CGPoint(x: 0.16706*width, y: 0.48549*height), control1: CGPoint(x: 0.15241*width, y: 0.51827*height), control2: CGPoint(x: 0.16706*width, y: 0.50363*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.25984*width, y: 0.26123*height))
        path.addCurve(to: CGPoint(x: 0.26018*width, y: 0.2145*height), control1: CGPoint(x: 0.27239*width, y: 0.24867*height), control2: CGPoint(x: 0.27239*width, y: 0.22705*height))
        path.addLine(to: CGPoint(x: 0.18799*width, y: 0.1423*height))
        path.addCurve(to: CGPoint(x: 0.1416*width, y: 0.1423*height), control1: CGPoint(x: 0.17578*width, y: 0.13009*height), control2: CGPoint(x: 0.15451*width, y: 0.12974*height))
        path.addCurve(to: CGPoint(x: 0.14125*width, y: 0.18903*height), control1: CGPoint(x: 0.12905*width, y: 0.1552*height), control2: CGPoint(x: 0.1287*width, y: 0.17648*height))
        path.addLine(to: CGPoint(x: 0.2131*width, y: 0.26123*height))
        path.addCurve(to: CGPoint(x: 0.25984*width, y: 0.26123*height), control1: CGPoint(x: 0.226*width, y: 0.27413*height), control2: CGPoint(x: 0.24693*width, y: 0.27379*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48375*width, y: 0.70975*height))
        path.addCurve(to: CGPoint(x: 0.70836*width, y: 0.48549*height), control1: CGPoint(x: 0.60756*width, y: 0.70975*height), control2: CGPoint(x: 0.70836*width, y: 0.6093*height))
        path.addCurve(to: CGPoint(x: 0.48375*width, y: 0.26088*height), control1: CGPoint(x: 0.70836*width, y: 0.36168*height), control2: CGPoint(x: 0.60756*width, y: 0.26088*height))
        path.addCurve(to: CGPoint(x: 0.25949*width, y: 0.48549*height), control1: CGPoint(x: 0.35993*width, y: 0.26088*height), control2: CGPoint(x: 0.25949*width, y: 0.36168*height))
        path.addCurve(to: CGPoint(x: 0.48375*width, y: 0.70975*height), control1: CGPoint(x: 0.25949*width, y: 0.6093*height), control2: CGPoint(x: 0.35993*width, y: 0.70975*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48375*width, y: 0.65116*height))
        path.addCurve(to: CGPoint(x: 0.31808*width, y: 0.48549*height), control1: CGPoint(x: 0.39202*width, y: 0.65116*height), control2: CGPoint(x: 0.31808*width, y: 0.57722*height))
        path.addCurve(to: CGPoint(x: 0.48375*width, y: 0.31948*height), control1: CGPoint(x: 0.31808*width, y: 0.39341*height), control2: CGPoint(x: 0.39202*width, y: 0.31948*height))
        path.addCurve(to: CGPoint(x: 0.64976*width, y: 0.48549*height), control1: CGPoint(x: 0.57547*width, y: 0.31948*height), control2: CGPoint(x: 0.64976*width, y: 0.39341*height))
        path.addCurve(to: CGPoint(x: 0.48375*width, y: 0.65116*height), control1: CGPoint(x: 0.64976*width, y: 0.57722*height), control2: CGPoint(x: 0.57547*width, y: 0.65116*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        DrawPathView(shape: MySun())
    }
}
