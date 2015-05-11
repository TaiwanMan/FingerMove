import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var toolBar: UIToolbar!
    
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


}

