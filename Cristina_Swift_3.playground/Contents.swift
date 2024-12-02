import UIKit

/*Create base class Computer with common properties and methods.

Subclasses Laptop, Desktop, and Server that inherit from Computer and add unique properties and methods.
A function to display detailed specifications of each computer type.
Create the Base Class (Computer)

Add the following properties:
brand: String
processor: String
ram: Int (amount of RAM in GB)
Create an initializer for these properties.
Add a method displaySpecs() that prints the values of these properties.
Create Subclasses:

Laptop:

Add an additional property isTouchscreen (a Bool to indicate if the laptop has a touchscreen).
Override the displaySpecs() method to include this property.
Desktop:

Add an additional property hasDedicatedGPU (a Bool to indicate if the desktop has a dedicated GPU).

Override the displaySpecs() method to include this property.

Server:

Add an additional property rackUnits (an Int to specify the server's size in rack units).

Override the displaySpecs() method to include this property.

Write some test code:

Create one object for each subclass (Laptop, Desktop, and Server).
Assign appropriate values to their properties.
Call the displaySpecs() method for each object to print their specifications. */

// Base Class is Computer

class Computer {
    private var brand: String
    private var processor: String
    private var ram: Int
    
    init(brand: String, processor: String, ram: Int) {
        self.brand = brand
        self.processor = processor
        self.ram = ram
    }
    
    func getBrand() -> String {
        return self.brand
    }
    
    func getProcessor() -> String {
        return self.processor
    }
    
    func getRam() -> Int {
        return self.ram
    }
    // Display specifications
    
    func displaySpecs() {
        print("Brand: \(self.brand), Processor: \(self.processor), Ram: \(self.ram)GB")
    }
}

// Subclass 1 is Laptop

class Laptop: Computer {
    private var isTouchscreen: Bool
    
    init(brand: String, processor: String, ram: Int, isTouchscreen: Bool) {
        self.isTouchscreen = isTouchscreen
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Touchscreen: \(self.isTouchscreen ? "Yes" : "No")")
    }
}

// Subclass 2 is Desktop

class Desktop: Computer {
    private var gpuEquipped: Bool
    
    init(brand: String, processor: String, ram: Int, gpuEquipped: Bool) {
        self.gpuEquipped = gpuEquipped
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("GPU Equipped: \(self.gpuEquipped ? "Yes" : "No")")
    }
}
// Subclass 3 is Server

class Server: Computer {
    private var rackCapacity: Int
    
    init(brand: String, processor: String, ram: Int, rackCapacity: Int) {
        self.rackCapacity = rackCapacity
        super.init(brand: brand, processor: processor, ram: ram)
    }
    
    override func displaySpecs() {
        super.displaySpecs()
        print("Rack Capacity: \(self.rackCapacity)")
    }
}


let studentLaptop = Laptop(brand: "Lenovo", processor: "AMD Ryzen 7 6800U", ram: 16, isTouchscreen: false)
let studentDesktop = Desktop(brand: "ASUS", processor: "Intel i7 (13th Gen)", ram: 32, gpuEquipped: true)
let schoolServer = Server(brand: " Supermicro", processor: "Intel Xeon Silver", ram: 64, rackCapacity: 4)

// Print specifications
print("Student Laptop Specs:")
studentLaptop.displaySpecs()
print("\nStudent Desktop Specs:")
studentDesktop.displaySpecs()
print("\nSchool Server Specs:")
schoolServer.displaySpecs()
