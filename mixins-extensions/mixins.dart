//mixins are used to share functionality in multiple
//classes without code duplication
//mixins are good for defining behaviors
//classes can inherit these behaviors in a more maintainable way
//mixins lead to shallow class hierarchies
/*DrawBacks*/
//don't have constructors
//can lead to name collisions => explained in 'mixins2.dart'
mixin Breathing {
  void breathe() => print('breathing');
}

mixin Swimming {
  void swim() => print('swimming');
}

class Animal with Breathing {}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {}
