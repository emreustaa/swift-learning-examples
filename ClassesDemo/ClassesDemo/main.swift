

let skeleton = Enemy(health: 100, attackStrength: 10)
let skeleton2 = skeleton

skeleton.takeDamage(amount: 10)
print(skeleton2.health)

skeleton.takeDamage(amount: 10)
skeleton2.takeDamage(amount: 10)

print(skeleton.health)
print(skeleton2.health)

//print(skeleton.health)
//skeleton.move()
//skeleton.attack()
//
//let skeleton2 = Enemy(health: 20, attackStrength: 300)
//
//print(skeleton2.health)
//skeleton2.move()
//skeleton2.attack()
//
//
//let dragon = Dragon(health: 30, attackStrength: 400)
//dragon.wingSpan = 5
//dragon.attackStrength = 15
//dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane")
//
//print(dragon.wingSpan)
//print(dragon.health)
//dragon.move()
//dragon.attack()
//
