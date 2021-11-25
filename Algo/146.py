class LRUCache:

    def __init__(self, capacity: int):
        self.capacity = capacity
        self.cache = {}

    def get(self, key: int) -> int:
        if key in self.cache:
            self.put(key, self.cache[key])
        return self.cache.get(key, -1)

    def put(self, key: int, value: int) -> None:
        self.cache.pop(key, None)
        self.cache[key] = value
        if len(self.cache) > self.capacity:
            del self.cache[next(iter(self.cache))]


# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache(capacity)
# param_1 = obj.get(key)
# obj.put(key,value)
