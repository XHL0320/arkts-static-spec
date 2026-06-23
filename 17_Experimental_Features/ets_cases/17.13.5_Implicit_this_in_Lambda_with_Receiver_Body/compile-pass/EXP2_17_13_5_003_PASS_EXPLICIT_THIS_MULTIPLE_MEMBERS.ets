/**
 * @id EXP2_17_13_5_003_PASS_EXPLICIT_THIS_MULTIPLE_MEMBERS
 * @expect compile-pass
 * @section 17.13.5
 * @design 显式this同时访问多个接收者成员
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class Config { host: string = "localhost"; port: number = 8080; secure: boolean = false }
function testExplicitThisMultiple(): void {
  let connectionString = (this: Config): string => {
    let protocol: string = "http"
    if (this.secure) { protocol = "https" }
    return protocol + "://" + this.host + ":" + this.port
  }
  let cfg: Config = new Config(); cfg.host = "example.com"; cfg.port = 443; cfg.secure = true
  let cs: string = connectionString(cfg)
  console.log("compiled successfully")
}
