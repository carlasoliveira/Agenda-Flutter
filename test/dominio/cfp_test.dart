import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_agenda/dominio/cpf.dart';

main() {
  group('Teste de CPF vazio', () {
    test('Entidade CPF - CPF preenchido', () {
      expect(() => CPF('109.169.999-20'), returnsNormally);
    });

    test('Entidade CPF - CPF vazio', () {
      expect(() => CPF(''), throwsException);
    });

    group('CPF tem 11 dígitos', () {
      test('Entidade CPF - CPF tem 11 dígitos', () {
        expect(CPF('109.169.999-20').temOnzeNumeros(), true);
      });

      test('Entidade CPF - CPF tem 12 dígitos', () {
        expect(() => CPF('109.169.999-200').temOnzeNumeros(), throwsException);
      });
    });

    group('CPF tem dígitos diferentes', () { 
      
      test('Entidade CPF - CPF tem dígitos diferentes', () {
        expect(() => CPF('109.169.999-20').temNumerosDiferentes(), returnsNormally);
      });
    });
  });
}
