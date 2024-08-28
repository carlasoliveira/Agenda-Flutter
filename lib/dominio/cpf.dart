class CPF {
  late List<int> numerosCPF;
  CPF(String cpf) {
    if (cpf == '') throw Exception('CPF não pode ser vazio');
    cpf = cpf.replaceAll('.', '');
    cpf = cpf.replaceAll('-', '');
    numerosCPF = cpf.split('').map((e) => int.parse(e)).toList();
    temOnzeNumeros();
    temNumerosDiferentes();
    eDigitosCorretos();
  }
  bool temOnzeNumeros() {
    if (numerosCPF.length != 11) throw Exception('CPF deve ter 11 números');
    return true;
  }

  bool temNumerosDiferentes() {
    var resultadoVerificacao = false;
    for (var n = 0; n<9; n++){
      if (numerosCPF[n] != numerosCPF[0]){
        resultadoVerificacao = true;
        break;
      }
    }
    throw Exception('CPF não pode ter todos os números iguais');
  }

  bool eDigitosCorretos(){
    if(calcularDigito(8)!=numerosCPF[9]) throw Exception('CPF inválido');
    if(calcularDigito(9)!=numerosCPF[10]) throw Exception('CPF inválido');
    return true;
  }

  int calcularDigito(int indice) {
    var soma = 0;
    for (var peso = 9; peso > -1; peso--){
      soma += numerosCPF[indice] * peso;
    }
    var digito = soma % 11; //resto da divisão
    if(digito == 10) digito = 0;
    return digito;
  }
}
