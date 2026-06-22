/**
 * @id CON_06_03_01_026_RUNTIME_ENUM_EQUALITY
 * @expect runtime
 * @section 6.3.1
 * @design 枚举的相等比较运行时行为
 * @note 运行时用例：实际执行验证枚举值的 == != 语义
 */
enum Status {
  Active,
  Inactive,
  Pending
}

function main(): void {
  if (!(Status.Active == Status.Active)) {
    throw new Error("assertion failed: Active == Active should be true")
  }
  if (Status.Active == Status.Inactive) {
    throw new Error("assertion failed: Active == Inactive should be false")
  }
  if (!(Status.Active != Status.Inactive)) {
    throw new Error("assertion failed: Active != Inactive should be true")
  }
  if (Status.Active != Status.Active) {
    throw new Error("assertion failed: Active != Active should be false")
  }

  console.log("Enum equality comparison verified")
}
