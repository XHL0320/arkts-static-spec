class B27 { private secret: int = 99; getSecret(): int { return this.secret } }
class D27 extends B27 {}
function main(): void { let d: D27 = new D27(); if (d.getSecret() != 99) { throw new Error("fail") } console.log("verified") }
