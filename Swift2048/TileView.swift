//
//  TileView.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/12.
//  Copyright © 2016年 Felix. All rights reserved.
//

import UIKit

class TileView: UIView {
    
    let colorMap = [
        2:UIColor.red,
        4:UIColor.blue,
        8:UIColor.brown,
        16:UIColor.cyan,
        32:UIColor.darkGray,
        64:UIColor.darkText,
        128:UIColor.gray,
        256:UIColor.green,
        512:UIColor.magenta,
        1024:UIColor.orange,
        2048:UIColor.purple
    ]
    
    var value:Int = 0{
        didSet{
            backgroundColor = colorMap[value]
            numberLabel.text = "\(value)"
        }
    }
    
    var numberLabel = UILabel()
    
    init(pos:CGPoint,width:CGFloat,value:Int){
        numberLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: width, height: width))
        numberLabel.text = "\(value)"
        numberLabel.textColor = UIColor.white
        numberLabel.textAlignment = NSTextAlignment.center
        numberLabel.minimumScaleFactor = 0.5
        numberLabel.font = UIFont.init(name: "微软雅黑", size: 20)
        super.init(frame: CGRect.init(x: pos.x, y: pos.y, width: width, height: width))
        addSubview(numberLabel)
        self.value = value
        backgroundColor = colorMap[value]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
