class ParkingSystem:

    def __init__(self, big: int, medium: int, small: int):
        self.car = [big, medium, small]

    def addCar(self, carType: int) -> bool:
        if self.car[carType-1]:
            self.car[carType-1] -= 1
            return True
        return False


# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem(big, medium, small)
# param_1 = obj.addCar(carType)


##
class ParkingSystem:

    def __init__(self, big: int, medium: int, small: int):
        self.car = {1:big, 2:medium, 3:small}

    def addCar(self, carType: int) -> bool:
        if self.car[carType]:
            self.car[carType] -= 1
            return True
        return False


# Your ParkingSystem object will be instantiated and called as such:
# obj = ParkingSystem(big, medium, small)
# param_1 = obj.addCar(carType)