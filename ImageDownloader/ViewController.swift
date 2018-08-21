import UIKit

class ViewController: UIViewController {
    
    let catURL    = URL(string: "https://www.msah.com/sites/default/files/orange-tabby-chubby-on-cattree.jpg")
    let dogURL    = URL(string: "https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg")
    let rabbitURL = URL(string: "https://i.redd.it/7kmb5w5ph8ez.jpg")
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBAction func downloadCatButtonTapped(_ sender: UIButton) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        activityIndicator.startAnimating()
        let task = URLSession.shared.dataTask(with: catURL!) { (data, urlResponse, error)  in
            if let data = data,
                let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.imageView.image = image
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        task.resume()
    }
    
    @IBAction func downloadDogButtonTapped(_ sender: UIButton) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        activityIndicator.startAnimating()
        let task = URLSession.shared.dataTask(with: dogURL!) { (data, urlResponse, error)  in
            if let data = data,
                let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.imageView.image = image
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        task.resume()
    }
    
    @IBAction func downloadRabbitButtonTapped(_ sender: UIButton) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        activityIndicator.startAnimating()
        let task = URLSession.shared.dataTask(with: rabbitURL!) { (data, urlResponse, error)  in
            if let data = data,
                let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.imageView.image = image
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        task.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

