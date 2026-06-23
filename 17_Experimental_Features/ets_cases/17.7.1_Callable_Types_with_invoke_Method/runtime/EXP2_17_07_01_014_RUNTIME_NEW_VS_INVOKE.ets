/**
 * @id EXP2_17_07_01_014_RUNTIME_NEW_VS_INVOKE
 * @expect runtime
 * @section 17.7.1
 * @design 运行时验证：new ClassName() 调用构造函数而非 $_invoke。使用计数器区分两种调用路径。
 * @note 运行时用例：实际执行验证 new 表达式和 $_invoke 调用不同路径
 */
class Counter {
    public invokedCount: int
    public constructed: boolean

    constructor() {
        this.invokedCount = 0
        this.constructed = true
    }

    static $_invoke(): Counter {
        let c: Counter = new Counter()
        c.invokedCount = 1
        c.constructed = false
        return c
    }
}

function main(): void {
    // Test 1: new ClassName() should call constructor
    let c1: Counter = new Counter()
    if (!c1.constructed) {
        throw new Error("FAIL: new Counter() should set constructed=true")
    }
    if (c1.invokedCount != 0) {
        throw new Error("FAIL: new Counter() should leave invokedCount=0, got " + c1.invokedCount)
    }

    // Test 2: ClassName() should call $_invoke
    let c2: Counter = Counter()
    if (c2.constructed) {
        throw new Error("FAIL: Counter() via $_invoke should set constructed=false")
    }
    if (c2.invokedCount != 1) {
        throw new Error("FAIL: Counter() via $_invoke should set invokedCount=1, got " + c2.invokedCount)
    }

    // Test 3: explicit $_invoke should work the same as short form
    let c3: Counter = Counter.$_invoke()
    if (c3.constructed) {
        throw new Error("FAIL: Counter.$_invoke() should set constructed=false")
    }
    if (c3.invokedCount != 1) {
        throw new Error("FAIL: Counter.$_invoke() should set invokedCount=1, got " + c3.invokedCount)
    }

    // Test 4: new doesn't match $_invoke; they are different instances
    if (c1.invokedCount == c2.invokedCount) {
        throw new Error("FAIL: constructor and $_invoke should produce different invokedCount values")
    }

    console.log("All assertions passed")
}
