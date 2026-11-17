# win10_optimizer

Windows 10 optimization script: disables unnecessary background services
to reduce RAM usage and CPU load.

The script disables system services or switches them to manual mode —
services stop running in the background and only start when needed.
Less RAM usage, less CPU load, faster system response.

- Disables **46 services**
- Switches **26 services** to manual
- Selective rollback available
- **Works on any Windows 10 edition**

## Results

Tested on Windows 10 IoT Enterprise LTSC 21H2 (build 19044.3324):

| Metric      | Stock  | Optimized |
|-------------|--------|-----------|
| Processes   | ~145   | **60**    |
| RAM at idle | 1.9 GB | **1.1 GB** |

**~60% fewer processes, ~40% less RAM at idle** compared to stock.

## Usage

1. Right-click `win10_optimizer.bat` → **Run as administrator**
2. Choose in the menu: full optimization or selective mode
3. Reboot

## Rollback

Run the script again and choose the rollback option —
all disabled services return to their default state.

## Warning

The script changes system service configuration. All changes are reversible,
but create a **restore point** before running it on a production machine.

## Скрипт оптимизации Windows 10

Скрипт отключает системные службы или переводит их в ручной режим —
службы перестают висеть в фоне и запускаются только по необходимости.
Снижается потребление ОЗУ, нагрузка на процессор и ускоряется отклик системы.

- Отключает **46 служб**
- Переводит **26 служб** в ручной режим
- Доступен выборочный откат
- **Работает на любой редакции Windows 10**

## Результаты

Протестировано на Windows 10 IoT Enterprise LTSC 21H2 (сборка 19044.3324):

| Метрика       | Сток   | После     |
|---------------|--------|-----------|
| Процессы      | ~145   | **60**    |
| ОЗУ в простое | 1,9 ГБ | **1,1 ГБ** |

**−60% процессов, −40% ОЗУ в простое** по сравнению со стоковой системой.

## Использование

1. Правый клик по `win10_optimizer.bat` → **Запуск от имени администратора**
2. Выберите в меню: полная оптимизация или выборочный режим
3. Перезагрузка

## Откат

Запустите скрипт ещё раз и выберите пункт отката —
все отключённые службы вернутся в исходное состояние.

## Внимание

Скрипт меняет конфигурацию системных служб. Все изменения обратимы,
но перед запуском на рабочей машине создайте **точку восстановления**.

---

License: MPL-2.0
