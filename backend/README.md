URLs:

[DEP]http://localhost/getmovietest?title=akira
http://192.168.1.91:8080/search/provider?title=akira
http://localhost/importmovie?id=149
http://localhost/movie/akira
http://localhost/search?title=akira
http://localhost/latest

Movies for testing:

- 149: Akira
- 89: Indiana Jones and the last crusade
- 78: Blade Runner
- 280: Terminator 2: Judgment Day
- 475946: Blade Runner Apagon

Todo:
- Remove ".[]{}()" from slug
- Add Supervisor
- Add Rabbit
- Add Redis
- Add Elastic

JWT Authentication:
https://vabadus.es/blog/symfony/autenticacion-jwt-en-symfony
https://vabadus.es/blog/symfony/sistema-de-refresco-de-tokens-jwt-en-symfony
https://medium.com/@kcsanjeeb091/implementing-jwt-based-authentication-with-next-js-v14-and-nextauth-v4-e3efca4b158b
https://medium.com/@agharsaifeddine/set-up-jwt-authentication-with-symfony-using-the-lexikjwtauthenticationbundle-2df8e9170bec
https://medium.com/@edouard.courty/how-to-enable-jwt-authentication-with-symfony-83a05ab2592f

In order to create SSL keys, use command
php bin/console lexik:jwt:generate-keypair
https://symfony.com/bundles/LexikJWTAuthenticationBundle/current/index.html
