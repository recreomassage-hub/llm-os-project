#!/bin/bash
# step.sh - Атомарный коммит для LLM-OS

echo "📦 Сборка состояния для коммита..."

# Получаем текущие метрики
ROLE=$(grep "current_role:" WORKFLOW_STATE.md 2>/dev/null | cut -d':' -f2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' || echo "UNKNOWN")
STAGE=$(grep "current_stage:" WORKFLOW_STATE.md 2>/dev/null | cut -d':' -f2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//' || echo "UNKNOWN")
TIMESTAMP=$(date +"%H:%M:%S")
DATE_ISO=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo "🔍 Анализ прогресса:"
echo "   Роль: $ROLE"
echo "   Этап: $STAGE"
echo "   Время: $TIMESTAMP"

# Обновляем дату в WORKFLOW_STATE.md
if [ -f "WORKFLOW_STATE.md" ]; then
    sed -i.bak "s/last_update:.*/last_update: $DATE_ISO/" WORKFLOW_STATE.md
    sed -i.bak "s/обновлено:.*/обновлено: $DATE_ISO/" WORKFLOW_STATE.md 2>/dev/null || true
    rm -f WORKFLOW_STATE.md.bak
    echo "✅ WORKFLOW_STATE.md обновлен"
fi

# Проверяем изменения
CHANGES=$(git status --porcelain 2>/dev/null)
if [ -z "$CHANGES" ]; then
    echo "⚠️ Нет изменений для коммита"
    exit 0
fi

# Создаем осмысленное сообщение коммита
STAGE_PROGRESS=$(grep -A5 "###.*$STAGE" WORKFLOW_STATE.md 2>/dev/null | grep "выполнено:" | head -1 | sed 's/.*выполнено: //' || echo "0/?")
COMMIT_MSG="[$ROLE] $STAGE ($STAGE_PROGRESS) @$TIMESTAMP"

echo "💾 Коммит: $COMMIT_MSG"
git add . 2>/dev/null
git commit -m "$COMMIT_MSG" 2>/dev/null

echo ""
echo "🎯 СЛЕДУЮЩИЕ ШАГИ:"
echo "   1. git log --oneline -5"
echo "   2. Проверить WORKFLOW_STATE.md"
echo "   3. Продолжить работу или передать следующей роли"

