class Address {
  const Address(this.email, [this.name]);

  final String email;
  final String? name;

  Map<String, dynamic> toJson() => {
        'email': email,
        'name': name,
      };
}
