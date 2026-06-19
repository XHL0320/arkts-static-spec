/**
 * @id CLS_09_08_013_FAIL_SETTER_WITH_RETURN_TYPE
 * @expect compile-fail
 * @section 9.8
 * @design setter 声明时带有显式返回类型应编译失败
 * @note 反向用例：setter 不可声明返回类型，返回值类型由语言隐式处理
 */
class Box {
  private _val: int = 0
  set value(v: int): int { this._val = v } // Compile-time error, setter has return type
}

class Tag {
  private _id: int = 0
  set id(v: int): void { this._id = v } // Compile-time error, setter has return type annotation
}
