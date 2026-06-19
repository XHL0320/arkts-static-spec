class Age { private _age: int = 0; get age(): int { return this._age } set age(a: int) { if (a < 0) { return } this._age = a } }
function main(): void { let p: Age = new Age(); p.age = 25; if (p.age != 25) { throw new Error("fail") } p.age = -1; if (p.age != 25) { throw new Error("setter validation fail") } console.log("verified") }
