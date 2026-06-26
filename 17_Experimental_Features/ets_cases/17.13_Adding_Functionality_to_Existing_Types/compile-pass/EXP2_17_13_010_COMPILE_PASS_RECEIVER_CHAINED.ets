/**
 * @id EXP2_17_13_010_COMPILE_PASS_RECEIVER_CHAINED
 * @expect compile-pass
 * @section 17.13
 * @design 验证多个 receiver 函数链式调用编译通过
 * @note 正向用例：多个 receiver 函数可通过点号链式调用
 */
class Num {
  value: int = 0
}

function add(this: Num, x: int): Num { this.value += x; return this }
function mul(this: Num, x: int): Num { this.value *= x; return this }

function main(): void {
  let n: Num = new Num()
  n.add(5).mul(2)
  console.log(n.value.toString())
}
