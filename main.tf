resource "local_file" "foo" {
  content  = "O máquina que será usada é a ${var.conteudo[1]}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  #default = ["Maquina01", "Maquina02", "Maquina03", "Maquina04"]
  #type = list
  default = [1, 2, 3, 4]
  type = list(number)
  description = "Essa variável contem o conteúdo que vai para o arquivo."
}