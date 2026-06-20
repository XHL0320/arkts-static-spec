# 04 Names, Declarations & Scopes — Test Cases

## Directory Structure

```
ets_cases/
├── 4.1_Names/                  # §4.1 名称
├── 4.2_Declarations/           # §4.2 声明
├── 4.3_Scopes/                 # §4.3 作用域
├── 4.4_Accessible/             # §4.4 可访问性
├── 4.5_Type_Declarations/      # §4.5 类型声明
├── 4.6_Variable_Constant_Declarations/  # §4.6 变量与常量声明
└── 4.7_Function_Declarations/  # §4.7 函数声明
```

Each subsection contains three categories:

| Category | Purpose |
|----------|---------|
| `compile-pass/` | Valid syntax — must compile without errors |
| `compile-fail/` | Invalid syntax — compiler must reject |
| `runtime/` | Runtime behavior — must execute correctly |

## Naming Convention

```
NAM_{XX}_{YY}_{NNN}_{TYPE}_{DESCRIPTION}.ets
```

- `NAM` — chapter prefix (Names, Declarations & Scopes)
- `{XX}_{YY}` — subsection number (e.g., `04_01`)
- `{NNN}` — sequential number (001–019: PASS, 010–029: FAIL, 020–039: RUNTIME)
- `{TYPE}` — `PASS` / `FAIL` / `RUNTIME`
- `{DESCRIPTION}` — UPPER_SNAKE_CASE topic description

## Execution

```bash
bash run_names_cases_wsl.sh
```
