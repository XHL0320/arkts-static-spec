/**
 * @id CLS_09_03_2_007_RUNTIME_OPTIONAL_PROPERTY_SET_ERROR
 * @expect runtime
 * @section 9.3.2
 * @design 不实现可选属性后set操作导致runtime error
 * @note 运行时用例：spec规定不实现可选属性时，默认accessor的set操作
 *       应抛出ThrowException（runtime error）
 *       Spec依据：spec §9.3.2 "c.n = 1" causes ThrowException at runtime
 */
interface IOptSet7 {
  n?: number
}
class COptSet7 implements IOptSet7 {
}

function main(): void {
  let c = new COptSet7()
  try {
    c.n = 1
    throw new Error("c.n = 1 should throw runtime error but did not")
  } catch (e) {
    if (e instanceof Error && e.message === "c.n = 1 should throw runtime error but did not") {
      throw e
    }
    console.log("Optional property set error verified")
  }
}
