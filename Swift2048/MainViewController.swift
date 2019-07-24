//
//  MainViewController.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/12.
//  Copyright © 2016年 Felix. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    //维度数
    var dimension:Int = 4
    
    //游戏过关最大值
    var maxNumber:Int = 2048
    
    //数字格子的宽度
    var width:CGFloat = 50
    
    //格子之间的间隔
    var padding:CGFloat = 6
    
    //保存背景视图的数组，方便管理和设置
    var backgrounds:Array<UIView>
    
    //游戏数据模型
    var gmodel: GameModel
    
    init() {
        self.backgrounds = Array<UIView>()
        self.gmodel = GameModel.init(dimension: self.dimension)
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        getNumber()
        getNumber()
    }
    
    func setupBackground() {
        
        self.view.backgroundColor = UIColor.purple
        
        let btn = UIButton.init(frame: CGRect.init(x: 80, y: 80, width: 100, height: 30))
        btn.setTitle("添加数字", for: UIControl.State.normal)
        btn.backgroundColor = UIColor.orange
        btn.setTitleColor(UIColor.white, for: UIControl.State.normal)
        btn.setImage(UIImage.init(named: "123.gif"), for: UIControl.State.normal)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(addNumber), for: UIControl.Event.touchUpInside)
        
        var x:CGFloat = 30
        var y:CGFloat = 150
        
        let 常量 = "你好"
        print(常量)
        var 变量:Int = 12
        变量 = 8
        print(变量)
        
        for _ in 0..<变量 {
            print("dsfds")
        }
        
//        var 数组 = [Int]()
        
        
        for _ in 0...dimension - 1 {
            
            y = 150
            for _ in 0...dimension - 1 {
                let background = UIView.init(frame:CGRect.init(origin: CGPoint.init(x: x, y: y), size: CGSize.init(width: width, height: width)))
                background.backgroundColor = UIColor.darkGray
                self.view.addSubview(background)
                backgrounds.append(background)
                y += padding + width
                
            }
            x += padding + width
        }
    }
    
    @objc func addNumber() {
        getNumber()
        getNumber()
    }
    
    func getNumber() {
        let randv = Int(arc4random_uniform(UInt32(dimension)))
        print(randv)
        
        var seed:Int = 2
        if (randv == 1) {
            seed = 4
        }
        let col = Int(arc4random_uniform(UInt32(dimension)))
        let row = Int(arc4random_uniform(UInt32(dimension)))
        
        if (gmodel.isFull()) {
            print("位置已经满了")
            return
        }
        if (gmodel.setPosition(row: row, col: col, value: seed) == false) {
            
            getNumber()
            return
        }
        
        insertTile(pos: (row,col), value: seed)
        
    }
    
    func insertTile(pos:(Int,Int),value:Int){
        
        let (row,col) = pos
        
        let x = 30 + CGFloat(col) * (width + padding)
        let y = 150 + CGFloat(row) * (width + padding)
        
        let tile = TileView.init(pos: CGPoint.init(x: x, y: y), width: width, value: value)
        self.view.addSubview(tile)
        self.view.bringSubviewToFront(tile)
     
        tile.layer.setAffineTransform(CGAffineTransform.init(scaleX: 0.1, y: 0.1))
        
        UIView.animate(withDuration: 0.3, delay: 0.1, options: UIView.AnimationOptions.curveEaseInOut, animations: {
                () -> Void in
                    tile.layer.setAffineTransform(CGAffineTransform.init(scaleX: 1, y: 1))
        }) { (finished:Bool) in
                UIView.animate(withDuration: 0.08, animations: { 
                    tile.layer.setAffineTransform(CGAffineTransform.identity)
                })
        }
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
