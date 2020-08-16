# sendgrid_mailer


**sendgrid_mailer** is a simple library for composing and sending emails using the [SendGrid v3 Mail Send API](https://sendgrid.com/docs/API_Reference/Web_API_v3/Mail/index.html).


## Example

```dart
import 'package:sendgrid_mailer/sendgrid_mailer.dart' as sg;

main() async {

  final mailer = sg.Mailer(<<YOUR_API_KEY>>);
  
  final toAddress = Address('to@example.com');
  final fromAddress = Address('from@example.com');
  final content = Content('text/plain', 'Hello World!');
  final subject = 'Hello Subject!';
  final personalization = Personalization(toAddress);
  
  final email = Email([personalization], fromAddress, content, subject);
    
  mailer.send(email).then((result) => {
  	...
  })	
    
}
```

## License
This library is licensed under MIT.