class Calc041 { static fact(n: int): int { let r: int = 1; for (let i: int=2;i<=n;i++) {r=r*i} return r } }
function main(): void { if (Calc041.fact(5)!=120) { throw new Error("fail") } console.log("verified") }
