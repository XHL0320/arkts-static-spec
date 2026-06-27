/**
 * @id ANN_18_02_1_011_RUNTIME_SINGLE_FIELD
 * @expect runtime
 * @section 18.2.1
 * @design 验证单字段注解在运行时正常编译执行
 * @note 运行时用例：简写形式运行时编译执行
 */
@interface deprecated {
  version: string
}

@deprecated("5.18")
class MyClass {}

function main(): void {
  console.log("verified")
}
