/**
 * @id CLS_09_01_011_RUNTIME_GENERIC_CLASS_INSTANCE
 * @expect runtime
 * @section 9.1
 * @design 泛型类实例化并验证
 * @note 运行时用例：验证泛型类实例化
 */
class GenBox<T> {
  content: T
  constructor(v: T) {
    this.content = v
  }
  get(): T {
    return this.content
  }
}

function main(): void {
  let b = new GenBox<int>(42)
  if (b.get() != 42) {
    throw new Error("GenBox<int>.get() should be 42")
  }
  let sb = new GenBox<string>("hello")
  if (sb.get() != "hello") {
    throw new Error("GenBox<string>.get() should be 'hello'")
  }
  console.log("Generic class instance verified")
}

