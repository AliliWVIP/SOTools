
import UIKit

extension String {
    ///  获取字符串宽度
    func getWidth(font: UIFont, height: CGFloat) -> CGFloat {
        if self.isEmpty {
            return 0
        }
        return getSize(font: font, width: CGFloat.greatestFiniteMagnitude, height: height).width
    }
    /// 获取字符串高度
    func getHeight(font: UIFont, width: CGFloat) -> CGFloat {
        return getSize(font: font, width: width, height: CGFloat.greatestFiniteMagnitude).height
    }
    func getSize(font: UIFont, width: CGFloat, height: CGFloat) -> CGSize {
        var size = CGSize.zero
        size = self.boundingRect(with: CGSize(width: width, height: height), options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil).size
        return size
    }
}
