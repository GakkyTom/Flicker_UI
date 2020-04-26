//
//  BezierButton.swift
//  tinderMock
//
//  Created by 板垣智也 on 2020/04/26.
//  Copyright © 2020 板垣智也. All rights reserved.
//

import UIKit

@IBDesignable
class BezierButton: UIButton {
    override func draw(_ rect: CGRect) {
        // 三角形 -------------------------------------
        let lineWidth: Double = 2
        let lineLength: Double = 30
        let startPoint: Double = lineWidth / 2
        
        // UIBezierPath のインスタンス生成
        let line = UIBezierPath()
        // 起点
        // はみ出るのでストロークの半分だけずらしておく
        line.move(to: CGPoint(x: startPoint, y: startPoint))
        // 帰着点
        line.addLine(to: CGPoint(x: startPoint, y: startPoint + lineLength))
        line.addLine(to: CGPoint(x: startPoint + (sqrt(3) * lineLength / 2), y: lineLength / 2))

        // ラインを結ぶ
        line.close()
        // 色の設定
        UIColor.red.setStroke()
        UIColor.clear.setFill()
        self.isUserInteractionEnabled = true
        
        // ライン幅
        line.lineWidth = 2
        // 描画
        line.stroke();
    }
}
