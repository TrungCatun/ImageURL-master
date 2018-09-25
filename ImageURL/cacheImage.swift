//
//  cacheImage.swift
//  ImageURL
//
//  Created by Trung on 6/26/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
class cacheImage {
    static var image : NSCache<NSString, AnyObject> = {
        var result = NSCache<NSString, AnyObject>()
        result.countLimit = 20 //
        result.totalCostLimit = 10 * 1024 * 1024 // kích thước 
        return result
    }()
    
}
