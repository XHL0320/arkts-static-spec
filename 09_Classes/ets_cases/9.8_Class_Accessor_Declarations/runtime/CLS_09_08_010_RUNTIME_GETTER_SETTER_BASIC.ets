/**
 * @id CLS_09_08_010_RUNTIME_GETTER_SETTER_BASIC
 * @expect runtime
 * @section 9.8
 * @design getter/setter 在运行时通过 field access 语法正确调用：setter 写入 -> getter 读取
 * @note 运行时用例：验证 setter 的校验逻辑和 getter 的返回值
 */
class GuardedValue {
  private _val: int = 0
  get val(): int { return this._val }
  set val(v: int) {
    if (v < 0) {
      this._val = 0
    } else if (v > 100) {
      this._val = 100
    } else {
      this._val = v
    }
  }
}

function main(): void {
  let g: GuardedValue = new GuardedValue()

  // setter validation: negative value clamped to 0
  g.val = -50
  if (g.val != 0) {
    throw new Error("setter should clamp negative to 0")
  }

  // setter validation: value exceeding 100 clamped to 100
  g.val = 200
  if (g.val != 100) {
    throw new Error("setter should clamp value above 100")
  }

  // setter validation: normal value within range
  g.val = 75
  if (g.val != 75) {
    throw new Error("setter should preserve value in range")
  }

  console.log("Getter setter basic runtime verified")
}
