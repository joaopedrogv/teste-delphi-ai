# 📦 Projeto_Fiscal40

> 🔄 Repositório migrado do VisualSVN Server para GitHub.  
> 💻 Desenvolvido em **Delphi 2006** | 🪟 Ambiente: **Windows**

## 🔒 Política de Encoding (LEIA ANTES DE EDITAR)
- ✅ **Mantenha o encoding padrão do Delphi 2006: ANSI (Windows-1252)**.
- ❌ **NÃO converta** arquivos `.pas`, `.dpr`, `.dfm`, etc. para UTF-8.
- 🌍 O Git armazena os bytes originais. A visualização no GitHub ou SourceTree pode variar conforme o locale da máquina, mas **os arquivos não são corrompidos**.
- 🛠️ Se usar editores externos (VS Code, Notepad++, etc.), configure para detectar `Windows-1252` ou `UTF-8 com fallback`.

## 📥 Arquivos Gerados (NÃO COMMITAR)
Adicione o seguinte `.gitignore` na raiz do projeto:
```gitignore
# Compilados e Binários
*.dcu
*.exe
*.dll
*.bpl
*.res
*.map
*.tds

# Cache e Temporários
*.dsk
*.identcache
*.local
*.stat
*.~*
*.bak
__history/
__recovery/
*.dof.local

# IDE Files
*.bdsproj.user
*.projdata

## Execute na raiz do projeto após clonar ou execute "setup-config.bat":
```
git config core.quotepath false
git config core.autocrlf false
git config i18n.commitencoding cp1252
git config i18n.logoutputencoding cp1252
```