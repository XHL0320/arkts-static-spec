/**
 * @id ITF_10_04_02_003_PASS_OPTIONAL_PROPERTY_EQUIVALENCE
 * @expect compile-pass
 * @section 10.4.2
 * @design 可选属性两种形式的等价性
 * @note 正向用例：验证 property?: Type 和 property: Type | undefined 的等价性
 */
interface Form1 {
    property?: string;
}

interface Form2 {
    property: string | undefined;
}

function testEquivalence(): void {
    let f1: Form1 = { property: "hello" };
    let f2: Form2 = { property: undefined };
    
    let v1: string | undefined = f1.property;
    let v2: string | undefined = f2.property;
}
