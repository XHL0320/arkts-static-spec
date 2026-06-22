/**
 * @id CON_06_03_01_025_RUNTIME_ENUM_RELATIONAL
 * @expect runtime
 * @section 6.3.1
 * @design 数值基类型枚举的关系比较运行时行为：枚举值作为基类型参与比较
 * @note 运行时用例：实际执行验证枚举值的关系比较
 */
enum Priority {
  Low,
  Medium,
  High
}

function main(): void {
  if (!(Priority.High > Priority.Low)) {
    throw new Error("assertion failed: High(2) > Low(0) should be true")
  }
  if (Priority.Low > Priority.Medium) {
    throw new Error("assertion failed: Low(0) > Medium(1) should be false")
  }
  if (!(Priority.Medium >= Priority.Medium)) {
    throw new Error("assertion failed: Medium >= Medium should be true")
  }
  if (!(Priority.Low < Priority.High)) {
    throw new Error("assertion failed: Low < High should be true")
  }

  let val: int = 0
  if (!(Priority.Medium > val)) {
    throw new Error("assertion failed: Medium(1) > 0 should be true")
  }

  console.log("Enum relational comparison verified")
}
