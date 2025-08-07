//Q1:
void Greet(String name, [String greeting = 'Hello']) =>
    print('$greeting $name!');

//Q2:
void RegisterUser({required String username, required String email}) {
  print('User [$username] registered with email [$email]');
}

//Q3:
void RegisterUserUpdated({required String username, required String email}) {
  if (email.contains('@'))
    print('User [$username] registered with email [$email]');
  else
    print('Invalid email for user [$username]');
}

//Q4:
void PrintItems(List<String> items, {String title = 'Item List'}) {
  print(title);
  items[0];
  for (int i = 1; i <= items.length; i++) {
    print('$i.'+items[i-1]);
  }
}
