/**
 * @id EXP_07_35_04_005_RUNTIME_FUNCTION_SCOPE_CAPTURE
 * @expect runtime
 * @section 7.35.4
 * @design 验证函数作用域捕获：每次调用 capturingFunction 产生独立捕获变量（对应 spec 示例 3）
 * @note 运行时用例：func1 和 func2 是不同的函数类型实例，各有自己的 'v' 捕获变量
 */

// capturingFunction 返回一个函数，该函数设置内部捕获的变量 v
// 并返回 v 之前的值
function capturingFunction(): (p: int) => int {
  let v: int = 0
  return (p: int): int => {
    let prev: int = v
    v = p
    return prev // 返回修改前的值
  }
}

function main(): void {
  const func1 = capturingFunction()
  const func2 = capturingFunction()

  // func1 第一次调用: prev=0
  let r1: int = func1(11)
  if (r1 != 0) {
    throw new Error("assertion failed 1: func1(11) expected 0, got " + r1)
  }

  // func2 第一次调用: prev=0 (独立的 v)
  let r2: int = func2(22)
  if (r2 != 0) {
    throw new Error("assertion failed 2: func2(22) expected 0, got " + r2)
  }

  // func1 第二次调用: prev=11 (func1 自己的 v=11)
  let r3: int = func1(33)
  if (r3 != 11) {
    throw new Error("assertion failed 3: func1(33) expected 11, got " + r3)
  }

  // func2 第二次调用: prev=22 (func2 自己的 v=22)
  let r4: int = func2(44)
  if (r4 != 22) {
    throw new Error("assertion failed 4: func2(44) expected 22, got " + r4)
  }

  // 进一步验证 func1 和 func2 的独立性
  let r5: int = func1(55)
  if (r5 != 33) {
    throw new Error("assertion failed 5: func1(55) expected 33, got " + r5)
  }

  let r6: int = func2(66)
  if (r6 != 44) {
    throw new Error("assertion failed 6: func2(66) expected 44, got " + r6)
  }

  console.log("verified")
}
