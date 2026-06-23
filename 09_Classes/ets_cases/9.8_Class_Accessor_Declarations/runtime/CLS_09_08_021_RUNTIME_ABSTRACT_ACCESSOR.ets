/**
 * @id CLS_09_08_021_RUNTIME_ABSTRACT_ACCESSOR
 * @expect runtime
 * @section 9.8
 * @design 抽象 getter/setter 运行时验证：子类正确实现并使用
 * @note 运行时用例：验证抽象类声明的 accessor 在子类中正确实现并在运行时通过 field access 调用
 */
abstract class AbstractConfig {
  abstract get threshold(): int
  abstract set threshold(t: int)
  abstract get label(): string
}

class AppConfig extends AbstractConfig {
  private _threshold: int = 50
  private _label: string = "default"
  get threshold(): int { return this._threshold }
  set threshold(t: int) {
    if (t >= 0 && t <= 100) {
      this._threshold = t
    }
  }
  get label(): string { return this._label }
  set label(l: string) { this._label = l }
}

function main(): void {
  let cfg: AbstractConfig = new AppConfig()

  // verify default getter value
  if (cfg.threshold != 50) {
    throw new Error("default threshold should be 50")
  }

  // verify setter validation: within range
  cfg.threshold = 80
  if (cfg.threshold != 80) {
    throw new Error("threshold should be 80 after set")
  }

  // verify setter validation: out of range, should be ignored
  cfg.threshold = 150
  if (cfg.threshold != 80) {
    throw new Error("threshold should remain 80 when out of range")
  }

  // verify label accessor
  if (cfg.label != "default") {
    throw new Error("default label should be 'default'")
  }
  cfg.label = "production"
  if (cfg.label != "production") {
    throw new Error("label should be 'production' after set")
  }

  console.log("verified")
}
