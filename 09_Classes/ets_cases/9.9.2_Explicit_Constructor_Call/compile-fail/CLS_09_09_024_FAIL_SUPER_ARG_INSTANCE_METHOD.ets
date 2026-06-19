class B24 { constructor(n: int) {} }
class Bad24 extends B24 { getVal(): int { return 1 } constructor() { super(this.getVal()) } }
