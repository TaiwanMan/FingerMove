import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var toolBar: UIToolbar!
    
    //記錄觸碰的起點與終點
    var touchStartPosition:CGPoint!
    var touchEndPosition:CGPoint!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        //把toolbar移到畫面上方
        toolBar.frame = CGRectMake(0, -toolBar.frame.size.height, UIScreen.mainScreen().bounds.width, toolBar.frame.size.height)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Touch Events
    //觸碰開始
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        super.touchesBegan(touches, withEvent: event)
        //記錄的觸碰點歸零
        touchStartPosition = CGPointMake(0, 0)
        touchEndPosition = CGPointMake(0, 0)
        
        println("\(touches.count)")
//        if let touch = touches.count
        
        println("觸碰開始")
    }
    //觸碰中移動
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        super.touchesMoved(touches, withEvent: event)
        println("觸碰中移動")
    }
    //觸碰結束
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent)
    {
        super.touchesEnded(touches, withEvent: event)
        println("觸碰結束")
    }
}

