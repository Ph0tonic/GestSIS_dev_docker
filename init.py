from Crypto.PublicKey import RSA
code = 'nooneknows'

key = RSA.generate(2048)
privatekey = key.exportKey(passphrase=code, pkcs=8)
publickey = key.publickey().exportKey("PEM")
print(privatekey)
print(publickey)
