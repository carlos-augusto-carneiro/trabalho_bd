import psycopg2
import tkinter as tk

# Estabelecer a conexão com o banco de dados
conn = psycopg2.connect(
    host="localhost",
    database="DoacaoDeSangue",
    user="postgres",
    password="jogo1234"
)

cur = conn.cursor()

class Interface:
    def __init__(self, root):
        self.root = root
        self.root.geometry("1280x720")
        self.root.configure(bg="white")
        self.root.title("Hematocare")

        self.result_label = tk.Label(root, text="")
        self.result_label.pack()

        self.label1 = tk.Label(root, text="Digite o CPF:")
        self.label1.pack()
        self.entry1 = tk.Entry(root)
        self.entry1.pack()

        self.label2 = tk.Label(root, text="Digite o nome:")
        self.label2.pack()
        self.entry2 = tk.Entry(root)
        self.entry2.pack()

        self.label3 = tk.Label(root, text="Digite a idade:")
        self.label3.pack()
        self.entry3 = tk.Entry(root)
        self.entry3.pack()

        self.label4 = tk.Label(root, text="Digite o E-mail:")
        self.label4.pack()
        self.entry4 = tk.Entry(root)
        self.entry4.pack()

        self.label5 = tk.Label(root, text="Digite o logradouro:")
        self.label5.pack()
        self.entry5 = tk.Entry(root)
        self.entry5.pack()

        self.label6 = tk.Label(root, text="Digite o número:")
        self.label6.pack()
        self.entry6 = tk.Entry(root)
        self.entry6.pack()

        self.label7 = tk.Label(root, text="Digite o bairro:")
        self.label7.pack()
        self.entry7 = tk.Entry(root)
        self.entry7.pack()

        self.label8 = tk.Label(root, text="Digite a cidade:")
        self.label8.pack()
        self.entry8 = tk.Entry(root)
        self.entry8.pack()

        self.label9 = tk.Label(root, text="Digite o CEP:")
        self.label9.pack()
        self.entry9 = tk.Entry(root)
        self.entry9.pack()

        self.label10 = tk.Label(root, text="Digite o tipo sanguineo:")
        self.label10.pack()
        self.entry10 = tk.Entry(root)
        self.entry10.pack()

        self.label11 = tk.Label(root, text="Digite a senha:")
        self.label11.pack()
        self.entry11 = tk.Entry(root, show="*")
        self.entry11.pack()

        self.label12 = tk.Label(root, text="Digite o CPF do doador:")
        self.label12.pack()
        self.entry12 = tk.Entry(root)
        self.entry12.pack()

        self.label13 = tk.Label(root, text="Digite o telefone:")
        self.label13.pack()
        self.entry13 = tk.Entry(root)
        self.entry13.pack()

        self.button1 = tk.Button(root, text="Registrar Novo Doador", command=self.register_doador)
        self.button1.pack()

        """self.button2 = tk.Button(root, text="Registrar Hospital", command=self.register_hospital)
        self.button2.pack() 

        self.button3 = tk.Button(root, text="Registrar Funcionário", command=self.register_funcionario)
        self.button3.pack()"""

        self.button4 = tk.Button(root, text="Remover Doador", command=self.remove_doador)
        self.button4.pack()

        self.button5 = tk.Button(root, text="Consultar Doador", command=self.consultar_doador)
        self.button5.pack()

    def register_doador(self):
        cpf = self.entry1.get()
        nome = self.entry2.get()
        idade = self.entry3.get()
        email = self.entry4.get()
        logradouro = self.entry5.get()
        numero = self.entry6.get()
        bairro = self.entry7.get()
        cidade = self.entry8.get()
        cep = self.entry9.get()
        tipo_sanguineo = self.entry10.get()
        senha = self.entry11.get()
        telefone = self.entry13.get()

        # Executar instrução SQL para inserir os dados no banco de dados
        cur.execute("INSERT INTO doador (cpf, nome, idade, email, logradouro, numero, bairro, cidade, cep, tipo_sanguineo) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                    (cpf, nome, idade, email, logradouro, numero, bairro, cidade, cep, tipo_sanguineo))
        cur.execute("INSERT INTO telefone_doador (cpf, numero) VALUES (%s, %s)",
                    (cpf, numero))
        conn.commit()

        print("CPF:", cpf)
        print("Nome:", nome)
        print("Idade:", idade)
        print("E-mail:", email)
        print("Logradouro:", logradouro)
        print("Número:", numero)
        print("Bairro:", bairro)
        print("Cidade:", cidade)
        print("CEP:", cep)
        print("Tipo Sanguíneo:", tipo_sanguineo)
        print("Senha:", senha)

    def remove_doador(self):
        cpf = self.entry12.get()

        try:
            cur = conn.cursor()

            # Obter os códigos da bolsa de sangue associados ao CPF do doador
            cur.execute("SELECT codigo FROM bolsa_de_sangue WHERE cpf = %s", (cpf,))
            codigos_bolsa = cur.fetchall()


            for codigo in codigos_bolsa:
                cur.execute("DELETE FROM recebe WHERE codigo_bolsa = %s", (codigo,))



            # Excluir os registros das outras tabelas
            cur.execute("DELETE FROM bolsa_de_sangue WHERE cpf = %s", (cpf,))

            cur.execute("DELETE FROM telefone_doador WHERE cpf = %s", (cpf,))
            cur.execute("DELETE FROM atende WHERE cpf = %s", (cpf,))
            cur.execute("DELETE FROM doador WHERE cpf = %s", (cpf,))

            # Confirmar a transação
            conn.commit()

            print(f"Doador com CPF {cpf} removido com sucesso.")
        except Exception as e:
            # Reverter a transação em caso de erro
            conn.rollback()
            print(f"Erro ao remover o doador: {str(e)}")
        finally:
            # Fechar o cursor
            cur.close()


    def register_hospital(self):
        print("Registrar Hospital")

    def register_funcionario(self):
        print("Registrar Funcionário")

    def consultar_doador(self):
        cpf = self.entry1.get()

        # Executar instrução SQL para consultar o doador no banco de dados
        cur.execute("SELECT * FROM doador WHERE cpf = %s", (cpf,))
        results = cur.fetchall()

        if len(results) > 0:
            doador_info = ""
            for row in results:
                doador_info += f"CPF: {row[0]}\nNome: {row[1]}\nIdade: {row[2]}\nE-mail: {row[3]}\n" \
                               f"Logradouro: {row[4]}\nNúmero: {row[5]}\nBairro: {row[6]}\nCidade: {row[7]}\n" \
                               f"CEP: {row[8]}\nTipo Sanguíneo: {row[9]}"
            self.result_label.config(text=doador_info)
            print(doador_info)  # Exibir no terminal
        else:
            self.result_label.config(text="Doador não encontrado")
            print("Doador não encontrado")  # Exibir no terminal

root = tk.Tk()
Interface(root)
root.mainloop()

cur.close()