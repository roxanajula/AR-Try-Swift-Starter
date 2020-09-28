//
//  ThumbnailGenerator.swift
//  AR Real Estate
//
//  Created by Roxana Jula on 25/09/2020.
//  Copyright © 2020 Roxana Jula. All rights reserved.
// 

import UIKit
import QuickLookThumbnailing

// MARK: - QuickLookThumbnailing
extension Apartment {
  func generateThumbnail(for resource: String, completion: @escaping (UIImage) -> Void) {
    guard let url = Bundle.main.url(forResource: resource, withExtension: ".usdz") else {
        print("Unable to create URL for resource.")
        return
    }
    
    let size = CGSize(width: 335, height: 200)
    let scale = UIScreen.main.scale
    let request = QLThumbnailGenerator.Request(
      fileAt: url,
      size: size,
      scale: scale,
      representationTypes: .all)
    
    let generator = QLThumbnailGenerator.shared
    generator.generateBestRepresentation(for: request) { thumbnail, error in
      if let thumbnail = thumbnail {
        completion(thumbnail.uiImage)
      } else if let error = error {
        // Handle error
        print(error)
      }
    }
  }
}
