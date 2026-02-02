# Conectividade de Grafos (Lógica de Predicados / Logica de Primeira Ordem)
Este repositório contém arquivos de teste para provar a conectividade de grafos e também um relatório de pesquisa que foi feito para provar a eficácia das mesmas.

# Fluxo de Testes

1️⃣ Clonar o repositório
```bash
git clone https://github.com/Rodrigo-Sil/Logica_Para_Computacao.git
```

2️⃣ Instalar Vampire (Solver de LPO no Linux)
```bash
sudo apt install git cmake build-essential

git clone https://github.com/vprover/vampire.git
cd vampire
mkdir build
cd build
cmake ..
make
```

3️⃣ Rodar o programa
```bash
./vampire/build/vampire Logica_Para_Computacao/ArquivosVampire/ARQUIVO.p
```
