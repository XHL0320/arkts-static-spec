class B29 { name: string; constructor(n: string) { this.name = n } }
class D29 extends B29 { age: int; constructor(n: string, a: int) { super(n); this.age = a } }
function main(): void { let d: D29 = new D29("test", 30); if (d.name!="test" || d.age!=30) { throw new Error("fail") } console.log("verified") }
