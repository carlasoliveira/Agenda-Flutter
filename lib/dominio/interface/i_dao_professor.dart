import 'package:projeto_agenda/dominio/dto/dto_professor.dart';

abstract class IDAOProfessor {
  DTOProfessor salvar(DTOProfessor dto);
}