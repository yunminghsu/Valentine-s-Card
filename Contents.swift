import UIKit
// let catImage=UIImageView(image: UIImage(named: "catBaby.jpeg"))
let catImages=UIImage(named: "catBaby.jpeg")
let catImage=UIImageView(image: catImages)
catImage.frame=CGRect(x: 10, y: 10, width: 300, height: 250)
catImage.layer.cornerRadius=20
catImage.contentMode = .scaleAspectFill
catImage.layer.borderColor = CGColor(red: 1, green: 181/255, blue: 197/255, alpha: 1)
catImage.layer.borderWidth=5
catImage.clipsToBounds=true

// create I Love You stick
let messageLabel = UILabel(frame: CGRect(x: 150, y: 190, width: 130, height: 20))
messageLabel.text="  I  Love You "
messageLabel.textColor=UIColor(red: 255/255, green: 20/255, blue: 147/255, alpha: 1)
messageLabel.font=UIFont.systemFont(ofSize: 25)
// messageLabel.font=messageLabel.font.withSize(36)
catImage.addSubview(messageLabel)

// loop to create the cat border
for i in 0...10{
    let starLabel=UILabel(frame: CGRect(x: 5+i*30, y: 15, width: 20, height: 10))
    let starLabel2=UILabel(frame: CGRect(x: 5+i*30, y: 225, width: 20, height: 10))
    starLabel.text="🐱"
    starLabel2.text="🐱"
    starLabel.transform=CGAffineTransform(rotationAngle: .pi/180 * -45)
    starLabel2.transform=CGAffineTransform(rotationAngle: .pi/180 * 45)
    catImage.addSubview(starLabel)
    catImage.addSubview(starLabel2)
}

