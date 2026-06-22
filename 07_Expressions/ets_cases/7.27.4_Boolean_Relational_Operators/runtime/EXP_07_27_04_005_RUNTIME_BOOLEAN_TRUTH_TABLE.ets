/**
 * @id EXP_07_27_04_005_RUNTIME_BOOLEAN_TRUTH_TABLE
 * @expect runtime
 * @section 7.27.4
 * @design 布尔关系真值表验证

 * @note 运行时用例：实际执行验证布尔关系真值表
 */
function main(): void {
  if (false < true != true) { throw new Error("assertion failed: false < true")
  }
  if (true < false != false) { throw new Error("assertion failed: true < false")
  }
  if (false > true != false) { throw new Error("assertion failed: false > true")
  }
  if (true > false != true) { throw new Error("assertion failed: true > false")
  }
  if (false <= false != true) { throw new Error("assertion failed: false <= false")
  }
  if (true >= true != true) { throw new Error("assertion failed: true >= true")
  }
  console.log("verified")
}
