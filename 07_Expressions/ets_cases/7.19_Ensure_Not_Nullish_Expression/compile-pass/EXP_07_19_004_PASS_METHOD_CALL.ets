/**
 * @id EXP_07_19_004_PASS_METHOD_CALL
 * @expect compile-pass
 * @section 7.19
 * @design 验证 ensure-not-nullish 在方法调用上的编译通过
 * @note 正向用例：obj!.method() 编译通过，! 在方法调用前确保非空
 */
class Calc {
    getValue(): int {
        return 42
    }
}

class Factory {
    makeCalc(): Calc {
        return new Calc()
    }
}

function testMethodCallNonNull(): void {
    let c: Calc | undefined = new Calc()
    let v: int = c!.getValue()
}

function testMethodCallChained(): void {
    let f: Factory | undefined = new Factory()
    let v: int = f!.makeCalc().getValue()
}
