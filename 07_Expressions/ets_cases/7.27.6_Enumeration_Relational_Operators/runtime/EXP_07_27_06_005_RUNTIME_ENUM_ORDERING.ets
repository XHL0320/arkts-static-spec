/**
 * @id EXP_07_27_06_005_RUNTIME_ENUM_ORDERING
 * @expect runtime
 * @section 7.27.6
 * @design 枚举值排序验证

 * @note 运行时用例：实际执行验证枚举排序
 */
enum Level { LOW = 1, MEDIUM = 5, HIGH = 10 }
function main(): void {
  let a: Level = Level.LOW; let b: Level = Level.MEDIUM; let c: Level = Level.HIGH
  if (!(a < b)) { throw new Error("assertion failed: LOW < MEDIUM")
  }
  if (!(b < c)) { throw new Error("assertion failed: MEDIUM < HIGH")
  }
  if (a > c) { throw new Error("assertion failed: LOW should not be > HIGH")
  }
  console.log("verified")
}
