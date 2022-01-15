//
//  FillFormatterForEachEntry.swift
//  Charts
//
//  Created by Yuanbin Cai on 2022/1/15.
//

import Foundation

@objc(ChartDefaultFillFormatterForEachEntry)
public class FillFormatterForEachEntry: NSObject, IFillFormatterForEachEntry {
    
    public typealias Block = (
        _ entry: ChartDataEntry,
        _ dataSet: ILineChartDataSet,
        _ dataProvider: LineChartDataProvider) -> CGFloat
    
    @objc open var block: Block
        
    @objc public init(block: @escaping Block) {
        self.block = block
    }
    
    public func getFillY(ofEntry entry: ChartDataEntry,
                         dataSet: ILineChartDataSet,
                         dataProvider: LineChartDataProvider) -> CGFloat {
        return block(entry, dataSet, dataProvider)
    }
}
