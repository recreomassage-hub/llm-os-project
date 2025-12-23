📋 README.md — Шаблон для GitHub
text
# 🚀 LLM-OS: Фабрика ПО от идеи до PRODUCTION за 2.5 часа

**./llmos next ×20 = LIVE SaaS на Vercel!**

[![LLM-OS Demo](demo.gif)](https://flowlogic.shop)

## 🎯 Что это?

**LLM-OS** — мультиагентная система разработки ПО:
- 27 агентов (аналитик → архитектор → PM → DEV → QA → PROD)
- Автоматический Git + CI/CD
- Двойное ревью (self + peer)
- 95% автоматизация

## 🚀 СОЗДАНИЕ ПРОЕКТА (10 шагов)

### ШАГ 1: Подготовка (2 мин)
mkdir new-project-name && cd new-project-name
git init
./llmos start # Создаёт структуру + скрипты

text

### ШАГ 2: Формулировка задачи (5 мин)
**`USER_TASK.md`:**
Задача: [ТВОЯ ИДЕЯ]
Бизнес-цель: [описание]
MVP: [минимум фичи]
Стек: Next.js + Supabase + Vercel

text

### ШАГ 3: TZ Pipeline (10 мин)
./llmos tz-full # TZ → APPROVED

text

### ШАГ 4: Основной пайплайн (1.5 часа)
./llmos next # Копирует промпт → Cursor

text
**Цикл:**
Ctrl+V в Cursor → 5-10 мин

./llmos step # Коммит + push

./llmos next # Следующая роль

text

### ШАГ 5-7: Финализация + Деплой (20 мин)
./llmos next ×15 # До QA/SECURITY/DOCS
./llmos approve # OWNER review
./llmos deploy # Vercel + Railway LIVE!

text

## 🎪 РЕАЛ-ТАЙМ ПРИМЕР

08:00 ./llmos start
08:05 USER_TASK.md
08:15 TZ APPROVED
08:20 ./llmos next ×20 (1.5ч)
09:50 new-project.vercel.app LIVE! 🚀

text

## 🎮 БЫСТРЫЕ КОМАНДЫ

| Команда | Что делает |
|---------|------------|
| `./llmos start` | Инициализация проекта |
| `./llmos tz-full` | TZ pipeline (10 мин) |
| `./llmos next` | Следующий агент → Cursor |
| `./llmos step` | Git commit + push |
| `./llmos status` | Текущий статус |
| `./llmos monitor` | Реал-тайм дашборд |
| `./llmos deploy` | Vercel + Railway LIVE |

## 📊 СТАТУС

./llmos status # current_role/stage
./llmos monitor # Dashboard (отдельный терминал)

text

## ✅ ПРОВЕРКА ПЕРЕД СТАРТОМ

☑ llmos + step.sh + monitor.sh ✓
☑ PROMPTS/ (27+ промптов) ✓
☑ ROLES/ (инструкции) ✓
☑ .env.example + .gitignore ✓

text

## 🎯 РЕЗУЛЬТАТ

INPUT: 1 идея в USER_TASK.md
OUTPUT:
├── src/backend/ (API + Supabase)
├── src/frontend/ (React MVP)
├── docker-compose.yml
├── CI/CD (GitHub Actions)
├── 95% test coverage
└── LIVE: project.vercel.app

text

## 🤖 КАК РАБОТАЕТ

USER_TASK.md → TZ Analyst → TZ Reviewer →
ANALYST → ARCHITECT → PM → BACKEND → FRONTEND →
INFRA → QA → SECURITY → DOCS → OWNER → PRODUCTION

text

**10 команд `./llmos` = ЛЮБОЙ ПРОЕКТ ОТ ИДЕИ ДО LIVE!**

---

⭐ **Star проект** ⭐ **Попробуй на своём проекте!**
🚀 ГОТОВО К GitHub!
