//
//  IFillFormatterForEachEntry.swift
//  Charts
//
//  Created by Yuanbin Cai on 2022/1/15.
//

import Foundation

import Foundation
import CoreGraphics

/// Protocol for providing a custom logic to where the filling line of a LineDataSet should end. This of course only works if setFillEnabled(...) is set to true.
@objc(IChartFillFormatterForEachEntry)
public protocol IFillFormatterForEachEntry
{
    /// - Returns: The vertical (y-axis) position where the filled-line of the LineDataSet should end, for the entry
    func getFillY(ofEntry entry: ChartDataEntry, dataSet: ILineChartDataSet, dataProvider: LineChartDataProvider) -> CGFloat
}
