/**
 * @id ITF_10_03_002_PASS_MULTIPLE_METHODS
 * @expect compile-pass
 * @section 10.3
 * @design 多个方法成员
 * @note 正向用例：验证接口包含多个方法
 */
interface Calculator {
    add(a: number, b: number): number;
    subtract(a: number, b: number): number;
    multiply(a: number, b: number): number;
}
