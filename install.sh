#!/bin/bash
# ==========================================
# REPLICA-SKILL OPENCODE INSTALLER
# ==========================================
# Tek komutla Replica skill'lerini OpenCode'a kurar

echo "🚀 Replica-Skill OpenCode Installer"
echo "==================================="
echo ""

# 1. Kontrol
echo "1. Kontrol ediliyor..."
if [ ! -d "/Users/bertugfahriozer/.opencode/replica-skill" ]; then
    echo "❌ HATA: /Users/bertugfahriozer/.opencode/replica-skill klasörü bulunamadı!"
    echo "   Lütfen önce repoyu klonlayın veya kopyalayın."
    exit 1
fi
echo "✅ Replica-skill klasörü bulundu"

# 2. Skills klasörü oluştur
echo ""
echo "2. Skills klasörü oluşturuluyor..."
mkdir -p /Users/bertugfahriozer/.opencode/skills
echo "✅ Skills klasörü hazır"

# 3. Skill'leri kopyala
echo ""
echo "3. Skill'ler kopyalanıyor..."
cp -r /Users/bertugfahriozer/.opencode/replica-skill/replica-* /Users/bertugfahriozer/.opencode/skills/
echo "✅ Tüm skill'ler kopyalandı"

# 4. Listele
echo ""
echo "4. Yüklenen skill'ler:"
ls -1 /Users/bertugfahriozer/.opencode/skills/ | grep replica | while read skill; do
    echo "   ✅ $skill"
done

# 5. Özet
echo ""
echo "==================================="
echo "✅ Kurulum Tamamlandı!"
echo "==================================="
echo ""
echo "📊 Toplam: $(ls -1 /Users/bertugfahriozer/.opencode/skills/ | grep replica | wc -l | tr -d ' ') skill yüklendi"
echo ""
echo "🚀 Kullanım:"
echo "   opencode"
echo ""
echo "   # Skill'ler otomatik yüklenir"
echo "   opencode skill load replica-recon"
echo "   opencode skill load replica-architect"
echo "   # ... vb."
echo ""
echo "📚 Dokümantasyon:"
echo "   /Users/bertugfahriozer/.opencode/replica-skill/README.md"
echo ""
