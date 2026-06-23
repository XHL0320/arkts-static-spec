class S38 { private constructor() {} static create(): S38 { return new S38() } }
function main(): void { let s: S38 = S38.create(); console.log("verified") }
