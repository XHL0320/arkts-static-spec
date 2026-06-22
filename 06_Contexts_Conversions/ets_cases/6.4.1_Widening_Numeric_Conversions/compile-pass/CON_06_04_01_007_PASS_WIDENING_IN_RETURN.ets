/**
 * @id CON_06_04_01_007_PASS_WIDENING_IN_RETURN
 * @expect compile-pass
 * @section 6.4.1
 * @design Widening 在返回上下文中: return byte/short/int→long, int/float→double
 * @note 正向用例：验证 widening 返回
 */
function retByteAsLong(): long { let b: byte = 1; return b }
function retShortAsLong(): long { let s: short = 2; return s }
function retIntAsLong(): long { let i: int = 3; return i }
function retIntAsDouble(): double { let i: int = 3; return i }
function retLongAsDouble(): double { let l: long = 100; return l }

function testWideningInReturn(): void {
  let r1: long = retByteAsLong()
  let r2: long = retShortAsLong()
  let r3: long = retIntAsLong()
  let r4: double = retIntAsDouble()
  let r5: double = retLongAsDouble()
}
