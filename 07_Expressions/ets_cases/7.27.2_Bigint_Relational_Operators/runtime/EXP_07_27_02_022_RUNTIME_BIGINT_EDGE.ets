/**
 * @id EXP_07_27_02_022_RUNTIME_BIGINT_EDGE
 * @expect runtime
 * @section 7.27.2
 * @design bigint 边界值比较运行时验证（大正数、大负数、零）
 * @note 运行时用例：验证大值 bigint 比较行为正确
 *       bigint 无精度上限，可表示任意大整数
 */
function main(): void {
    // 大正数
    let large: bigint = 9999999999999999999n;
    let larger: bigint = 10000000000000000000n;

    if ((large < larger) != true) { throw new Error("1: large < larger should be true"); }
    if ((large > larger) != false) { throw new Error("2: large > larger should be false"); }
    if ((large <= larger) != true) { throw new Error("3: large <= larger should be true"); }
    if ((large >= larger) != false) { throw new Error("4: large >= larger should be false"); }

    // 大负数
    let negLarge: bigint = -9999999999999999999n;
    let negLarger: bigint = -10000000000000000000n;

    // 负数：-99999... > -100000...（绝对值小的更大）
    if ((negLarge > negLarger) != true) { throw new Error("5: -9999n > -10000n should be true"); }
    if ((negLarge < negLarger) != false) { throw new Error("6: -9999n < -10000n should be false"); }
    if ((negLarge >= negLarger) != true) { throw new Error("7: -9999n >= -10000n should be true"); }
    if ((negLarge <= negLarger) != false) { throw new Error("8: -9999n <= -10000n should be false"); }

    // 零
    let zero: bigint = 0n;
    if ((zero < large) != true) { throw new Error("9: 0n < large should be true"); }
    if ((zero > large) != false) { throw new Error("10: 0n > large should be false"); }
    if ((zero > negLarge) != true) { throw new Error("11: 0n > negLarge should be true"); }
    if ((zero < negLarge) != false) { throw new Error("12: 0n < negLarge should be false"); }

    // 正负大值比较
    if ((negLarge < large) != true) { throw new Error("13: negLarge < large should be true"); }
    if ((negLarge > large) != false) { throw new Error("14: negLarge > large should be false"); }

    // 相同大值
    let same: bigint = 9999999999999999999n;
    if ((large < same) != false) { throw new Error("15: large < same should be false"); }
    if ((large <= same) != true) { throw new Error("16: large <= same should be true"); }
    if ((large >= same) != true) { throw new Error("17: large >= same should be true"); }
    if ((large > same) != false) { throw new Error("18: large > same should be false"); }

    console.log("verified");
}
