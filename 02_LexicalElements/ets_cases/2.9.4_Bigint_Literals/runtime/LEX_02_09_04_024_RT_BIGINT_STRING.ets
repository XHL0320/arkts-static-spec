/**
 * @id LEX_02_09_04_024_RT_BIGINT_STRING
 * @expect runtime
 * @section 2.9.4
 * @design bigint 字符串转换运行时验证
 * @note runtime 用例：验证 bigint 字符串转换的运行时行为
 */

function main(): void {
  // bigint 转字符串
  let x1: bigint = 123n
  let s1: string = x1.toString()
  if (s1 !== "123") { throw new Error("123n.toString() failed, got " + s1) }

  // 负 bigint 转字符串
  let x2: bigint = -456n
  let s2: string = x2.toString()
  if (s2 !== "-456") { throw new Error("-456n.toString() failed, got " + s2) }

  // 零 bigint 转字符串
  let x3: bigint = 0n
  let s3: string = x3.toString()
  if (s3 !== "0") { throw new Error("0n.toString() failed, got " + s3) }

  // 字符串转 bigint
  let x4: bigint = BigInt("789")
  if (x4 !== 789n) { throw new Error("BigInt(\"789\") failed, got " + x4) }

  // 负字符串转 bigint
  let x5: bigint = BigInt("-123")
  if (x5 !== -123n) { throw new Error("BigInt(\"-123\") failed, got " + x5) }
}
