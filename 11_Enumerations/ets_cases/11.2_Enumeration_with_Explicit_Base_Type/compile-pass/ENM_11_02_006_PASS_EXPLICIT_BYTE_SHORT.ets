/**
 * @id ENM_11_02_006_PASS_EXPLICIT_BYTE_SHORT
 * @expect compile-pass
 * @section 11.2
 * @design byte/short/long/float/double 显式基类
 * @note 正向用例
 */
enum ByteE: byte { A = 0, B = 1 }
enum ShortE: short { X = 10, Y = 20 }
enum LongE: long { Foo = 100 }
enum FloatE: float { P = 0.5f, Q = 1.0f }
enum DoubleE: double { R = 0.5, S = 1.0 }

function testExplicitByteShort(): void {
  let b: ByteE = ByteE.A
  let l: LongE = LongE.Foo
}