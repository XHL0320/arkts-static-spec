/**
 * @id NAM_04_02_01_001_PASS_CLASS_METHOD_OVERLOAD
 * @expect compile-pass
 * @section 4.2.1
 * @design 类中同名方法不同参数签名可区分
 * @note 正向用例：验证类方法重载通过签名区分（§4.2.1 行 221）
 */
class Calc {
    compute(x: number): number { return x; }
    compute(x: string): string { return x; }
}
