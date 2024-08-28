import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_agenda/dominio/dto/dto_professor.dart';
import 'package:projeto_agenda/dominio/interface/i_dao_professor.dart';
import 'package:projeto_agenda/dominio/professor.dart';

void main() {
  var dto = DTOProfessor(nome: 'Euzébio', cpf: '109.169.999-20', status: 'A');
  var dao = DAOProfessorFake();
  var professor = Professor(dto: dto, dao: dao);

  test('Status diferente', () {
    var mockDAO = DAOProfessorFake();
    var dto = DTOProfessor(
      nome: 'Euzébio',
      descricao: 'Professor',
      cpf: '109.169.999-20',
      status: 'B',
    );

    var professor = Professor(dto: dto, dao: mockDAO);
    expect(() => professor.status = 'B', throwsException);
  });

  test('Status correto', () {
    var mockDAO = DAOProfessorFake();
    var dto = DTOProfessor(
      nome: 'Euzébio',
      descricao: 'Professor',
      cpf: '109.169.999-20',
      status: 'A',
    );

    var professor = Professor(dto: dto, dao: mockDAO);
    expect(() => professor.status='A', returnsNormally);
  });
}

class DAOProfessorFake implements IDAOProfessor {
  @override
  DTOProfessor salvar(DTOProfessor dto) {
    return dto;
  }
}
