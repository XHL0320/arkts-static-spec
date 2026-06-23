/**
 * @id SEM_15_01_04_002_PASS_BYTE_SHORT_INC
 * @expect compile-pass
 * @section 15.1.4
 * @design 验证 byte/short 自增不自宽
 * @note 正向用例：byte 和 short 自增保持原类型
 */
function main(): void {
    let b: byte = 10;
    let s: short = 20;
    b++;
    s++;
    console.log(`${b} ${s}`);
}
