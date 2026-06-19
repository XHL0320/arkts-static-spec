class Base36 { greet(name: string): string { return "hi " + name } }
class Child36 extends Base36 { override greet(name: string): string { return "hello " + name } }
function main(): void { let b: Base36 = new Child36(); if (b.greet("x") != "hello x") { throw new Error("fail") } console.log("verified") }
