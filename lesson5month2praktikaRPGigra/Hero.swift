class Hero {
    var heroesName: String = ""
    var heroesDamage: Int = 0
    var heroesHealth: Int = 0
    
    func setName(name: String) {
        self.heroesName = name
    }
    func getName() -> String {
            return heroesName
        }
    func setDamage(damage: Int) {
            self.heroesDamage = damage
            
        }
    func getDamage() -> Int{
            return heroesDamage
        }
    func setHealth(health: Int) {
            self.heroesHealth = health
        }
    func getHealth() -> Int{
            return heroesHealth
        }
}
