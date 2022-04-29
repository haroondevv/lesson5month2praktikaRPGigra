
var boss = Boss()
boss.setName(name: "Boss")
boss.setDamage(damage: 70)
boss.setHealth(health: 1000)

var warrior = Warrior()
warrior.setName(name: "Warior")
warrior.setDamage(damage: 60)
warrior.setHealth(health: 300)

var wizard = Wizard()
wizard.setName(name: "Wizard")
wizard.setDamage(damage: 50)
wizard.setHealth(health: 250)

var archer = Archer()
archer.setName(name: "Archer")
archer.setDamage(damage: 40)
archer.setHealth(health: 200)

var names = [warrior.getName(), wizard.getName(), archer.getName()]
var heroesHealth = [warrior.getHealth(), wizard.getHealth(), archer.getHealth()]
var heroesDamage = [warrior.getDamage(), warrior.getHealth(), warrior.getHealth()]
var bossDamage = boss.getDamage()
var bossHealth = boss.getHealth()

let warriorAbility = warrior.appliedAbility(ability: "Применил неуязвимую способность!")
let warriorUse = [warriorAbility]
let wizardAbility = wizard.appliedAbility(ability: "Применил огненную способность!")
let wizardUse = [wizardAbility]
let archerAbility = archer.appliedAbility(ability: "Применил невидимую способность!")
let archerUse = [archerAbility]
let heroesAbility = [warriorAbility, wizardAbility, archerAbility]


func bossHit() {
    
    for i in 0..<heroesHealth.count {
        heroesHealth[i] = heroesHealth[i] - bossDamage
    }
    if heroesHealth[0] < 0 {
        heroesHealth[0] = 0
    }
    if heroesHealth[1] < 0 {
        heroesHealth[1] = 0
    }
    if heroesHealth[2] < 0 {
        heroesHealth[2] = 0
    }
}

func heroesHit() {
    for i in 0..<heroesDamage.count {
        bossHealth = bossHealth - heroesDamage[i]
    }
    if bossHealth < 0 {
        bossHealth = 0
    }
}

func round() {
    print("--------------------------------")
    bossHit()
    print("Босс атакует!")
    print("Здоровье героев: \(heroesHealth)")
    heroesHit()
    for i in 0..<names.count {
        print("\(names[i]) атакует!")
    }
    for i in 0..<names.count {
        print("\(names[i]) - \(heroesAbility[i])")
    }
    print("Здоровье босса: \(bossHealth)")
    print("--------------------------------")
}

var rounds: Int = 1

while true {
    if heroesHealth[0] <= 0 && heroesHealth[1] <= 0 && heroesHealth[2] <= 0 {
        print("Game Over! Boss win!")
        break
    } else if bossHealth <= 0 {
        print("Game Over! Heroes win!")
        break
    }
    
    print("\(rounds) раунд:")
    round()
    rounds = rounds + 1
}
