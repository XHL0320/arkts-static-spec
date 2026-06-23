/**
 * @id EXP2_17_12_002_PASS_MULTIPLE_DEFAULTS
 * @expect compile-pass
 * @section 17.12
 * @design 接口中声明多个默认方法（含不同参数和返回类型），类实现该接口，验证所有默认方法均可被调用
 * @note 正向用例：验证一个接口中多个默认方法的声明和使用
 */
interface IMultiMethod {
  greet(): void {
    console.log("Hello")
  }

  farewell(): void {
    console.log("Goodbye")
  }

  compute(x: int): int {
    return x * 2
  }

  getDescription(): string {
    return "default description"
  }
}

class Worker implements IMultiMethod {
}

function main(): void {
  let w: Worker = new Worker()
  w.greet()
  w.farewell()
  let r: int = w.compute(5)
  let d: string = w.getDescription()
  console.log("compute(5)=" + r + ", desc=" + d)
}
