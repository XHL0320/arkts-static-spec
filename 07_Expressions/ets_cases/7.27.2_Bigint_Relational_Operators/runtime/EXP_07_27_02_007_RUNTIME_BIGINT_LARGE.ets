/**
 * @id EXP_07_27_02_007_RUNTIME_BIGINT_LARGE
 * @expect runtime
 * @section 7.27.2
 * @design 验证大整数bigint之间的关系比较运行时行为（超出int/long范围的bigint值）
 * @note 运行时用例：实际执行验证大bigint值的关系比较结果
 */
function main(): void {
  // Very large bigint values (beyond int/long range)
  let huge1: bigint = 123456789012345678901234567890n
  let huge2: bigint = 987654321098765432109876543210n
  let huge3: bigint = 123456789012345678901234567890n  // same as huge1

  // huge1 < huge2
  if (!(huge1 < huge2)) throw new Error("huge1 < huge2 should be true")

  // huge2 > huge1
  if (!(huge2 > huge1)) throw new Error("huge2 > huge1 should be true")

  // huge1 > huge2
  if (huge1 > huge2) throw new Error("huge1 > huge2 should be false")

  // huge2 < huge1
  if (huge2 < huge1) throw new Error("huge2 < huge1 should be false")

  // Equal large bigints
  if (!(huge1 <= huge3)) throw new Error("huge1 <= huge3 (equal) should be true")
  if (!(huge1 >= huge3)) throw new Error("huge1 >= huge3 (equal) should be true")
  if (huge1 < huge3) throw new Error("huge1 < huge3 (equal) should be false")
  if (huge1 > huge3) throw new Error("huge1 > huge3 (equal) should be false")

  // Negative large bigint
  let negHuge: bigint = -99999999999999999999999999999n
  if (!(negHuge < huge1)) throw new Error("negHuge < huge1 should be true")
  if (!(negHuge < 0n)) throw new Error("negHuge < 0n should be true")
  if (negHuge > huge1) throw new Error("negHuge > huge1 should be false")

  console.log("verified")
}
