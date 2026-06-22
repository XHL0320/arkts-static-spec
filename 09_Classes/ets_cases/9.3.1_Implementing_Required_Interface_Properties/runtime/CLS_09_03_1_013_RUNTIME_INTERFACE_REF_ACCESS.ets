/**
 * @id CLS_09_03_1_013_RUNTIME_INTERFACE_REF_ACCESS
 * @expect runtime
 * @section 9.3.1
 * @design 通过接口引用访问隐式getter验证
 * @note 运行时用例：验证接口引用调用隐式getter/setter
 */
interface IAccess {
  n: number
}
class CAccess implements IAccess {
  n: number = 10
}

function main(): void {
  let c = new CAccess()
  let i: IAccess = c
  if (i.n != 10) {
    throw new Error("i.n should be 10")
  }
  i.n = 20
  if (i.n != 20) {
    throw new Error("i.n should be 20 after assignment")
  }
  console.log("Interface ref access verified")
}
