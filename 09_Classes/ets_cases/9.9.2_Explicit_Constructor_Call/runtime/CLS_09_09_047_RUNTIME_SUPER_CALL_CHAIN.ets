class B047 { val: int; constructor(v: int) { this.val = v } }
class D047 extends B047 { extra: string; constructor(v: int, s: string) { super(v); this.extra = s } }
function main(): void { let d: D047 = new D047(10, "x"); if (d.val!=10||d.extra!="x") { throw new Error("fail") } console.log("verified") }
