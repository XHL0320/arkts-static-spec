/**
 * @id EXP2_17_9_009_PASS_OVERLOAD_DEFAULT_PARAMS
 * @expect compile-pass
 * @section 17.9
 * @design 验证 overload 集中各候选函数可带不同默认参数值编译通过
 * @note 正向用例：overload 集中各函数签名可独立声明默认参数
 */
function addInt(x: int, y: int = 0): int { return x + y }
function addDouble(x: double, y: double = 0.0): double { return x + y }
overload add { addInt, addDouble }

function main(): void {
  let r1: int = add(1)
  let r2: double = add(2.0, 3.0)
  console.log(r1.toString() + r2.toString())
}

