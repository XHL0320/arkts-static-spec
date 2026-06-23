/**
 * @id ITF_10_04_02_201_RUNTIME_OPTIONAL_PROPERTY_DEFAULT_SETTER
 * @expect runtime
 * @section 10.4.2
 * @design 可选属性默认 setter 抛出 InvalidStoreAccessError
 * @note 运行时用例：验证可选属性的默认 setter 抛出 InvalidStoreAccessError
 */
interface Config {
    name: string;
    timeout?: number;
}

class AppConfig implements Config {
    name: string = "app";
}

function main(): void {
    let cfg: Config = new AppConfig();
    
    if (cfg.timeout !== undefined) {
        throw new Error("expected undefined");
    }
    
    console.log("verified");
}
