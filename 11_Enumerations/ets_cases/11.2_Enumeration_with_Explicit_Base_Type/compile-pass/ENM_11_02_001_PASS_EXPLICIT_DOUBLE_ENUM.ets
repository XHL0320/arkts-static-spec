/**
 * @id ENM_11_02_001_PASS_EXPLICIT_DOUBLE_ENUM
 * @expect compile-pass
 * @section 11.2
 * @design 显式 double/long/fd/byte 基类枚举全部合法初始化
 * @note 正向用例：spec 原例 DoubleEnum / LongEnum / ByteEnum
 */
enum DoubleEnum: double { A = 0.0, B = 1, C = 3.14159 }
enum LongEnum: long { A = 0, B = 1, C = 3 }
enum ByteEnum: byte { AA = 0, BB = 1, CC = 3 }
enum ShortEnum: short { X = 10, Y = 20, Z = 30 }
enum FloatEnum: float { P = 0.5f, Q = 1.0f, R = 2.5f }

function testExplicitDoubleEnum(): void {
  let d: DoubleEnum = DoubleEnum.A
  let l: LongEnum = LongEnum.B
  let b: ByteEnum = ByteEnum.AA
}