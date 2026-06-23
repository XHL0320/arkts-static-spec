/**
 * @id EXP2_17_01_004_PASS_CHAR_CLASS_FIELD
 * @expect compile-pass
 * @section 17.1
 * @design char 作为类字段类型：char 可以用于类的属性声明
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class CharHolder {
  public value: char = c'!'
  public name: string = "default"

  public getValue(): char {
    return this.value
  }

  public setValue(v: char): void {
    this.value = v
  }
}

function testCharClassField(): void {
  let holder: CharHolder = new CharHolder()
  holder.value = c'@'
  let v: char = holder.getValue()
  console.log(v)
  holder.setValue(c'#')
  console.log(holder.getValue())
}
