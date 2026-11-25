# Two-rotor vibration machine: MATLAB/Simulink models (2004)

*Русская версия — ниже / Russian version below.*

Archival source files of the MATLAB/Simulink models used in the PhD research of **Aivar D. Dzhabbarov** (also published as Aivar D. Djabbarov) at Saint Petersburg Electrotechnical University "LETI" (St. Petersburg, Russia), 2002–2006. The models describe a laboratory **two-rotor vibration machine driven by two electric motors** and its control (PID controllers, discrete PID, a nonlinear mechanical model written as an S-function).

> These are historical files saved with Simulink model format 5.0 in January 2004. They are published as a record of the original work, not as a maintained library. Opening them in a current MATLAB release may require conversion and the original S-function/parameter setup.

## Contents

| File | What it is |
|---|---|
| `models/STIALL.mdl` | Main Simulink model (about 170 blocks): the mechanical part as the S-function `stimall`, drive/controller subsystems, step input and many scopes (last saved 27 Jan 2004) |
| `models/STIALLMODELING.mdl` | Extended version (about 260 blocks) with discrete elements (zero-order hold, discrete integrator, discrete zero-pole) and manual switches |
| `models/piddiskret.mdl` | Discrete-time PID controller model (gains Kp, Ki, Kd, discrete integrator) with analog input/output blocks for connecting to real hardware |
| `models/Stimall.m` | MATLAB S-function with the dynamics of the mechanical system (20 continuous states, 4 inputs); switches for spring elasticity, spring damping and gravity (comments in Russian) |
| `models/run1.m` | Driver script: sets the step time, runs `sim('stiall')` for 15 s, plots rotor speeds and phase difference and saves figures |

## How to run (outline)

1. Open MATLAB/Simulink (a release that can read legacy `.mdl` files).
2. Add the `models/` folder to the path.
3. Open `STIALL.mdl` (or `STIALLMODELING.mdl`) and check that the S-function `Stimall.m` and the model parameters (workspace variables used inside the model) are available.
4. Run `run1.m`.

MathWorks software is not included.

**Encoding note.** In this GitHub copy the files `STIALL.mdl`, `STIALLMODELING.mdl` and `Stimall.m` were converted from Windows-1251 to UTF-8 so that the Russian comments and block labels display correctly; nothing else was changed. The byte-exact original files, together with a photograph of the test bench, are in the Zenodo record [10.5281/zenodo.24539725](https://doi.org/10.5281/zenodo.24539725).

## What the research was about

Two-motor (two-rotor) centrifugal vibration machines are used for screening, crushing and separation. Their two unbalanced rotors synchronize themselves, but near the resonance the rotor speeds can "stick" (the Sommerfeld effect), and the machine has many mechanical degrees of freedom but only two drive inputs. The research proposed a mechatronic approach, computer-built high-fidelity models, microcontroller control of the drives and experiments on a real test bench. Details are in the dissertation (below).

## Related records and identifiers

- Zenodo record of these models: [10.5281/zenodo.24539725](https://doi.org/10.5281/zenodo.24539725)
- Dissertation (2006), full text: [10.5281/zenodo.24539604](https://doi.org/10.5281/zenodo.24539604) ([record page](https://zenodo.org/records/24539604))
- Dissertation abstract (2006): [10.5281/zenodo.24203666](https://doi.org/10.5281/zenodo.24203666)
- Author ORCID: [0009-0001-0039-5159](https://orcid.org/0009-0001-0039-5159)

## License

[Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE), the same license as the Zenodo record. If you reuse the files, credit "Aivar D. Dzhabbarov" and cite the DOI above (see `CITATION.cff`).

---

# Двухроторная вибрационная машина: модели MATLAB/Simulink (2004)

Архивные исходные файлы моделей MATLAB/Simulink, использованных в кандидатской работе **Айвара Джелиловича Джаббарова** (в англоязычных работах — Aivar D. Djabbarov, Dzhabbarov) в СПбГЭТУ «ЛЭТИ», Санкт-Петербург, 2002–2006 гг. Модели описывают лабораторную **двухроторную вибрационную машину с двумя электроприводами** и её систему управления (ПИД-регуляторы, цифровой ПИД, нелинейная механическая модель в виде S-функции).

> Это исторические файлы в формате модели Simulink 5.0, сохранённые в январе 2004 года. Они опубликованы как документ о выполненной работе, а не как поддерживаемая библиотека. В современных версиях MATLAB может потребоваться конвертация и воссоздание исходных параметров.

## Состав

| Файл | Что это |
|---|---|
| `models/STIALL.mdl` | Основная модель Simulink (около 170 блоков): механическая часть как S-функция `stimall`, подсистемы приводов и регуляторов, ступенчатый вход, множество осциллографов (сохранён 27.01.2004) |
| `models/STIALLMODELING.mdl` | Расширенный вариант (около 260 блоков) с дискретными элементами (экстраполятор нулевого порядка, дискретный интегратор, дискретная нуль-полюсная модель) и ручными переключателями |
| `models/piddiskret.mdl` | Модель дискретного ПИД-регулятора (коэффициенты Kp, Ki, Kd, дискретный интегратор) с блоками аналогового ввода/вывода для подключения к реальной аппаратуре |
| `models/Stimall.m` | S-функция MATLAB с динамикой механической системы (20 непрерывных состояний, 4 входа); переключатели учёта упругости и демпфирования пружин, гравитации |
| `models/run1.m` | Скрипт запуска: задаёт время ступени, выполняет `sim('stiall')` на 15 с, строит графики скоростей роторов и разности фаз и сохраняет рисунки |

## Как запустить (кратко)

1. Откройте MATLAB/Simulink (версия, которая читает старые `.mdl`).
2. Добавьте папку `models/` в путь поиска.
3. Откройте `STIALL.mdl` или `STIALLMODELING.mdl`, убедитесь, что доступны S-функция `Stimall.m` и параметры модели (переменные рабочего пространства).
4. Запустите `run1.m`.

Программное обеспечение MathWorks в репозиторий не входит.

**О кодировке.** В этой копии на GitHub файлы `STIALL.mdl`, `STIALLMODELING.mdl` и `Stimall.m` переведены из Windows-1251 в UTF-8, чтобы русские комментарии и подписи блоков отображались верно; больше ничего не менялось. Исходные файлы без изменений и фотография стенда лежат в записи Zenodo [10.5281/zenodo.24539725](https://doi.org/10.5281/zenodo.24539725).

## О чём исследование

Двухроторные центробежные вибромашины применяют для грохочения, дробления и сепарации. Два дебалансных ротора самосинхронизируются, но вблизи резонанса скорости могут «залипать» (эффект Зоммерфельда), а у машины много механических степеней свободы при двух входах от приводов. В работе предложены мехатронный подход, компьютерное построение высокоадекватных моделей, микроконтроллерное управление приводами и эксперименты на реальной установке. Подробности — в диссертации.

## Связанные записи и идентификаторы

- Запись этих моделей на Zenodo: [10.5281/zenodo.24539725](https://doi.org/10.5281/zenodo.24539725)
- Диссертация (2006), полный текст: [10.5281/zenodo.24539604](https://doi.org/10.5281/zenodo.24539604) ([страница записи](https://zenodo.org/records/24539604))
- Автореферат диссертации (2006): [10.5281/zenodo.24203666](https://doi.org/10.5281/zenodo.24203666)
- ORCID автора: [0009-0001-0039-5159](https://orcid.org/0009-0001-0039-5159)

## Лицензия

[Creative Commons Attribution 4.0 International (CC BY 4.0)](LICENSE), та же, что у записи на Zenodo. При повторном использовании указывайте автора «Aivar D. Dzhabbarov» и цитируйте DOI (см. `CITATION.cff`).
