import 'package:projeto_agenda/dominio/cpf.dart';
import 'package:projeto_agenda/dominio/dto/dto_professor.dart';
import 'package:projeto_agenda/dominio/interface/i_dao_professor.dart';

class Professor {
  late dynamic id;
  late String _nome;
  late String? descricao;
  late String cpf;
  late String _status;

  late DTOProfessor dto;
  late IDAOProfessor dao;

  String get status => _status;

  void set status(String status) {
    if (status != 'A' || status != 'I')
      throw Exception('Status deve ser A ou I');
    _status = status;
  }

  String get nome => _nome;

  void set nome(String nome) {
    if (nome.isEmpty) {
      throw Exception('Nome não pode ser vazio');
    }
    _nome = nome;
  }

  Professor({required this.dto, required this.dao}) {
    id = dto.id;
    _nome = dto.nome;
    descricao = dto.descricao;
    cpf = dto.cpf;
    _status = dto.status; //está chamando o set status
    //CPF(cpf);
  }

  DTOProfessor salvar(DTOProfessor dto) {
    return dao.salvar(dto);
  }
}
