/**
 * @id LEX_02_09_05_011_RT_SHORT_CIRCUIT
 * @expect runtime
 * @section 2.9.5
 * @design 短路求值验证
 * @note runtime 用例：验证 && 和 || 的短路行为
 */

let counter: int = 0

function incrementCounter(): boolean {
  counter = counter + 1
  return true
}

function main(): void {
  // 验证 && 短路求值
  counter = 0
  let a: boolean = false
  let b: boolean = a && incrementCounter()
  // counter 应该为 0，因为 && 短路了
  if (counter !== 0) { throw new Error("&& short-circuit failed, counter=" + counter) }

  // 验证 || 短路求值
  counter = 0
  let c: boolean = true
  let d: boolean = c || incrementCounter()
  // counter 应该为 0，因为 || 短路了
  if (counter !== 0) { throw new Error("|| short-circuit failed, counter=" + counter) }

  // 验证 && 不短路时执行
  counter = 0
  let e: boolean = true
  let f: boolean = e && incrementCounter()
  // counter 应该为 1
  if (counter !== 1) { throw new Error("&& no short-circuit failed, counter=" + counter) }

  // 验证 || 不短路时执行
  counter = 0
  let g: boolean = false
  let h: boolean = g || incrementCounter()
  // counter 应该为 1
  if (counter !== 1) { throw new Error("|| no short-circuit failed, counter=" + counter) }
}
