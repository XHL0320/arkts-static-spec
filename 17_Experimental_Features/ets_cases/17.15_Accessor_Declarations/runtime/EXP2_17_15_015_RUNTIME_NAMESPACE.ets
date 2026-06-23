/**
 * @id EXP2_17_15_015_RUNTIME_NAMESPACE
 * @expect runtime
 * @section 17.15
 * @design 验证命名空间内 getter+setter 的读写交互
 * @note 运行时用例：通过命名空间访问 getter/setter 并验证状态一致性
 */
namespace MyNS {
  let nsValue: int = 0

  export get nsPair(): int {
    return nsValue
  }

  export set nsPair(v: int) {
    nsValue = v
  }
}

function main(): void {
  MyNS.nsPair = 42
  let result: int = MyNS.nsPair
  if (result != 42) {
    throw new Error("assertion failed: expected 42, got " + result)
  }
  MyNS.nsPair = result * 2
  if (MyNS.nsPair != 84) {
    throw new Error("assertion failed: expected 84, got " + MyNS.nsPair)
  }
  console.log("verified: namespace getter/setter, final=" + MyNS.nsPair)
}
