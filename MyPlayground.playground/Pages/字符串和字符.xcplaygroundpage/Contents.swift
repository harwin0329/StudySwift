import UIKit
import PlaygroundSupport

var str = "Hello, playground"
print(str)

var i = 10
/*:
 ##注释1
 #注释2
 -注释3
 
 [菜鸟教程](https://www.runoob.com)
*/


let multilineString = """
These are the same.
"""
print(multilineString)



func generateQuotation() -> String {
    let quotation = """
        The White Rabbit put on his spectacles.  "Where shall I begin,\
        	please your Majesty?" he asked.
        
        "Begin at the beginning," the King said gravely, "and go on
        till you come to the end; then stop."
        """
    return quotation
}

print(generateQuotation())


let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}" // $, Unicode scalar U+0024
let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖️, Unicode scalar U+1F496

let view  = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
view.backgroundColor = UIColor.red



let view2 = UITableViewController.init();

PlaygroundSupport.PlaygroundPage.current.liveView = view2



//:[next](@next)
