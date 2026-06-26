/**
 * @id EXP_07_19_003_PASS_FIELD_ACCESS
 * @expect compile-pass
 * @section 7.19
 * @design 验证 ensure-not-nullish 在字段访问上的编译通过
 * @note 正向用例：obj!.field 编译通过，! 在字段访问前确保非空
 */
class MyBox {
    value: int = 0
}

class Wrapper {
    inner: MyBox = new MyBox()
}

function testFieldAccessNonNull(): void {
    let b: MyBox | undefined = new MyBox()
    let v: int = b!.value
}

function testFieldAccessChained(): void {
    let w: Wrapper | undefined = new Wrapper()
    let v: int = w!.inner.value
}
