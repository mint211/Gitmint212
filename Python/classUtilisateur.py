class Utilisateur:
    anciennete = 0
    def __init__(self, nom, age):
        self.user_name = nom
        self.user_age = age
    def getNom(self):
        print("Salut, Je suis ", self.user_name)

