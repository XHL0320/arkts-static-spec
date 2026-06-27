/**
 * @id ANN_18_01_1_026_RUNTIME_VALID_FIELD_TYPES
 * @expect runtime
 * @section 18.1.1
 * @design 验证合法注解字段类型可在运行时正常编译执行
 * @note 运行时用例：声明含多种合法字段类型的注解，编译并执行通过
 */
enum Status {
  ACTIVE,
  INACTIVE
}

@interface Config {
  name: string
  version: int
  active: boolean
  status: Status
  tags: string[]
}

function main(): void {
  console.log("verified")
}
