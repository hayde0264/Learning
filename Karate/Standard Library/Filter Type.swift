//
//  Filter Type.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/21/22.
//

import Foundation
import CoreImage
import UIKit

//This Filter type takes an image as its parameter and returns a new image
typealias Filter = (CIImage) -> CIImage

func blur(radius: Double) -> Filter {
    
    return { image in
        let parameters: [String: Any] = [
            kCIInputRadiusKey: radius,
            kCIInputImageKey: image
        ]
        
        
        guard let filter = CIFilter(name: "CIGaussianBlur", parameters: parameters)
        else { fatalError() }
        
        
        guard let outputImgae = filter.outputImage
        else { fatalError() }
        
        
        return outputImgae
    }
}


func generate(color: UIColor) -> Filter {
    return { _ in
        let parameters = [kCIInputColorKey: CIColor(cgColor: color.cgColor)]
        
        guard let filter = CIFilter(name: "CIConstantColorGenerator", parameters: parameters)
        else { fatalError() }
        
        guard let outputImage = filter.outputImage
        else { fatalError() }
        
        return outputImage
    }
}


