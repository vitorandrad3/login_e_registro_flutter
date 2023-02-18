import 'package:novo_projeto/models/user_model.dart';

Map<String, Map<String, String>> _users = {
  _userList.first.mail: {_userList.first.password: _userList.first.name}
};

List<User> _userList = [
  User(
      mail: 'vitorxvitor.gabriel@gmail.com',
      name: 'Vitor Andrade',
      password: '123')
];

getUsers() {
  return _users;
}

setUser({required name, required mail, required password}) {
  _userList.add(User(mail: mail, name: name, password: password));

  _users[_userList[_userList.length - 1].mail] = {
    _userList[_userList.length - 1].password:
        _userList[_userList.length - 1].name
  };
}
