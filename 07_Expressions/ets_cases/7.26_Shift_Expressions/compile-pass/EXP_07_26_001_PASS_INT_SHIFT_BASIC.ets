/**
 * @id EXP_07_26_001_PASS_INT_SHIFT_BASIC
 * @expect compile-pass
 * @section 7.26
 * @design int 类型三个移位运算符（<<, >>, >>>）的基本编译通过验证
 * @note 正向用例：验证 int 类型在三种移位运算中均可编译通过
 *       包括：左移、带符号右移、无符号右移
 */
function main(): void {
    let a: int = 16;
    let b: int = 2;

    // 左移
    let left: int = a << b;
    // 带符号右移
    let signedRight: int = a >> b;
    // 无符号右移
    let unsignedRight: int = a >>> b;

    // 字面量移位
    let l1: int = 8 << 3;
    let l2: int = 8 >> 2;
    let l3: int = 8 >>> 2;

    console.log("result left: " + left);
    console.log("result signedRight: " + signedRight);
    console.log("result unsignedRight: " + unsignedRight);
}
