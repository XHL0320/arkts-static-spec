/**
 * @id ITF_10_04_02_200_RUNTIME_OPTIONAL_PROPERTY
 * @expect runtime
 * @section 10.4
 * @design 可选属性运行时行为
 * @note 运行时用例：验证接口可选属性运行时返回 undefined
 */
interface Config {
    name: string;
    timeout?: number;
}
class AppConfig implements Config {
    name: string = "app";
    timeout?: number;
}
function main(): void {
    let cfg: Config = new AppConfig();
    if (cfg.name != "app") { throw new Error("name failed"); }
    console.log("verified");
}
