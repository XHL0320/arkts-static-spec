/**
 * @id STM_08_02_004_PASS_compound_assignment
 * @expect compile-pass
 * @section 8.2
 * @design 测试复合赋值表达式作为语句，包括算术和位运算复合赋值
 * @note 复合赋值表达式作为语句应编译通过，结果被丢弃
 */
function testArithmeticCompound(): void {
    let x: int = 10;
    x += 5;
    x -= 3;
    x *= 2;
    x /= 4;
    x %= 3;
}

function testBitwiseCompound(): void {
    let x: int = 0xFF;
    x &= 0x0F;
    x |= 0xF0;
    x ^= 0xAA;
    x <<= 2;
    x >>= 1;
}

function testStringConcatenation(): void {
    let s: string = "hello";
    s += " world";
}
