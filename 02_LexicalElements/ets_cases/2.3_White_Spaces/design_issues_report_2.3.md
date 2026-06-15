# 2.3 White Spaces - ArkTS 设计问题发现报告

**报告日期：** 2026-06-15
**测试用例数：** 38（compile-pass: 21, compile-fail: 10, runtime: 7）
**目的：** 通过 6 种空白符的全面测试识别 ArkTS 静态编译器的设计问题。

---

## 一、设计问题

### 问题 A：spec 列表与 Unicode 空白符标准不完全对齐 ⭐⭐ MEDIUM

**spec 描述：** 列出 6 种空白符 (U+0020, U+0009, U+000B, U+000C, U+00A0, U+FEFF)。

**Unicode 标准 White_Space 属性：** Unicode 15.0 中 White_Space 属性涵盖 25 个码点，包括：
- Tab/LF/VT/FF/CR (U+0009-U+000D)
- Space (U+0020)
- NEL (U+0085)
- NBSP (U+00A0)
- Ogham Space Mark (U+1680)
- En Quad / Em Quad / En Space / Em Space 等 (U+2000-U+200A)
- Line Separator (U+2028) / Paragraph Separator (U+2029)
- Narrow No-Break Space (U+202F)
- Medium Mathematical Space (U+205F)
- Ideographic Space (U+3000)

**ArkTS 取舍：** 仅采纳 6 个，明显少于 Unicode 标准。这与 TypeScript/JavaScript 的标准（覆盖更多空白符）不一致。

**对比：**
| 语言 | 空白符数量 |
|------|-----------|
| ArkTS | 6 (Space, Tab, VT, FF, NBSP, ZWNBSP) |
| Java | 5 (SP, HT, FF, LF, CR) - 注：Java 把 LF/CR 算入空白 |
| TypeScript | 类 ECMAScript（约 18+） |
| Swift | 类 Unicode 标准 |

**评价：** ArkTS 的空白符列表是显式枚举式，便于编译器实现，但与 Unicode 标准不一致可能给 Unicode 文本工具的输出带来兼容性问题。

**建议：** spec 应明确说明为什么选择这 6 个，是否要求源文件中其他 Unicode 空白符（如 U+3000 全角空格）必须报错。

---

### 问题 B：ZWNBSP (U+FEFF) 的双重身份 ⭐⭐⭐ HIGH

**spec 描述：** ZWNBSP (U+FEFF) 同时是：
- BOM（字节序标记）—— 文件开头使用
- 普通空白符 —— 文件中间使用

**实测验证（用例 021）：**
```typescript
let{ZWNBSP}b: int = 2  // 编译通过：ZWNBSP 作分隔符
```

**实测验证（用例 038）：**
```typescript
let s: string = "ab{ZWNBSP}cd"
console.log(s.length)  // 5: ZWNBSP 在字符串字面量内是内容
```

**问题：**
1. 同一字符在不同上下文有不同语义（分隔符 vs 内容）
2. 与字符串处理工具不一致（很多工具认为 BOM 应被 strip）
3. 隐藏 bug：用户复制粘贴含 ZWNBSP 的代码可能产生隐式空白

**对比：**
| 语言 | ZWNBSP 处理 |
|------|------------|
| ArkTS | 既是 BOM 也是空白符 |
| TypeScript | 仅文件开头 BOM，中间为字符（取决于实现）|
| Java | 仅作为 BOM，中间出现报错 |
| Swift | 仅作 BOM |

**评价：** 这是 ArkTS 沿袭 ECMAScript 的设计，但容易导致隐藏问题。

**建议：**
1. 编译器对源文件中部的 ZWNBSP 发出 warning，提示开发者其等同于普通空白
2. 提供工具/规范，要求源代码格式化时 strip 掉非 BOM 位置的 ZWNBSP

---

### 问题 C：VT (U+000B) 和 FF (U+000C) 在源代码中无实际意义 ⭐ LOW

**spec 描述：** VT、FF 列为合法空白符。

**实测：** 三种均编译通过。

**实际使用：** VT 和 FF 是 ASCII 早期的打印控制符，在现代源代码中几乎不出现。

**对比：**
| 语言 | VT/FF |
|------|-------|
| ArkTS | ✅ 允许 |
| Java | ✅ 允许 |
| TypeScript | ✅ 允许 |
| Swift | ❌ 不允许（编译器报告 invalid character）|

**评价：** 沿袭 Java/ECMAScript 的历史设计，无害但冗余。

---

### 问题 D：NBSP (U+00A0) 易与普通空格混淆 ⭐⭐ MEDIUM

**spec 描述：** NBSP 是合法空白符。

**用例 035 验证：** `let{NBSP}a:{NBSP}int{NBSP}={NBSP}5` 编译通过。

**问题：**
- NBSP 在编辑器中视觉上与普通空格无差异
- 复制粘贴自网页/Word 文档常引入 NBSP，编译通过但代码风格不一致
- 在文本搜索（grep "let "）时 NBSP 不会被匹配

**实际场景：** 用户从 Web 复制示例代码，引入 NBSP，造成隐式问题。

**对比：**
| 语言 | NBSP 处理 |
|------|----------|
| ArkTS | ✅ 等同空格 |
| Java | ❌ 不允许（视为普通字符）|
| Swift | ❌ 不允许 |

**建议：** 编译器对 NBSP 发出 warning，鼓励规范化为普通空格。

---

### 问题 E：6 种空白符全混合的可读性 ⭐ LOW

**用例 008：** 文件中混用全部 6 种空白符，编译器编译通过。

**评价：** 这是 spec 允许的极端场景，仅作覆盖测试，不构成实际问题。

---

## 二、已验证 ArkTS 行为（与规范一致）

| 行为 | 用例编号 | 状态 |
|------|---------|------|
| Space (U+0020) 作分隔符 | 001 | ✅ |
| Tab (U+0009) 作分隔符 | 002 | ✅ |
| VT (U+000B) 作分隔符 | 003 | ✅ |
| FF (U+000C) 作分隔符 | 004 | ✅ |
| NBSP (U+00A0) 作分隔符 | 005 | ✅ |
| ZWNBSP (U+FEFF) 作分隔符 | 006 | ✅ |
| 多空白符等价于单个 | 009 | ✅ |
| 空白符被语法分析忽略 | 032~037 | ✅ |
| 空白符不出现在 Token 内 | 022~025 | ✅ |
| 空白符不出现在关键字内 | 026 | ✅ |
| 空白符不分隔多字符运算符 | 027~029 | ✅ |
| 空白符可在注释中 | 017~018 | ✅ |
| 字符串内空白是内容 | 019, 038 | ✅ |

---

## 三、严重性等级总览

| 严重性 | 数量 | 问题列表 |
|-------|------|---------|
| ⭐⭐⭐ HIGH | 1 | 问题 B: ZWNBSP 双重身份 |
| ⭐⭐ MEDIUM | 2 | 问题 A: 与 Unicode 标准不对齐、问题 D: NBSP 易混淆 |
| ⭐ LOW | 2 | 问题 C: VT/FF 冗余、问题 E: 极端混用可读性 |

---

## 四、改进方向建议

### 短期（编译器警告）
1. NBSP 与普通空格混合使用时发出 warning（问题 D）
2. 文件中部出现 ZWNBSP 时发出 warning（问题 B）
3. 单个文件混用超过 3 种空白符时发出风格 warning

### 中期（spec 完善）
1. 明确说明为什么仅采纳 6 种空白符，不采纳 Unicode 标准的 25 种
2. 明确 ZWNBSP 在 BOM 和分隔符两个角色的语义边界
3. 考虑增加 lint 规则推荐：仅使用 Space + Tab 作为缩进/分隔

### 长期（语言演进）
1. 评估是否将 VT/FF 标记为 deprecated（问题 C）
2. 提供 lint 工具检测 NBSP 引入

---

## 五、用例索引

| 用例 ID | 发现的问题 |
|---------|-----------|
| LEX_02_03_005 | 问题 D: NBSP 易混淆（编译通过但可视化困难）|
| LEX_02_03_006 | 问题 B: ZWNBSP 作为分隔符 |
| LEX_02_03_021 | 问题 B: ZWNBSP 多位置使用（非 BOM 位置）|
| LEX_02_03_038 | 问题 B: ZWNBSP 在字符串内是内容（双重身份验证）|
| LEX_02_03_003 | 问题 C: VT 在源代码中无实际意义 |
| LEX_02_03_004 | 问题 C: FF 在源代码中无实际意义 |
| LEX_02_03_008 | 问题 E: 6 种全混合极端场景 |
