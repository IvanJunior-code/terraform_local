resource "local_file" "foo" {
  content  = "O máquina que será usada é a ${var.conteudo[0]}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = ["Maquina01", "Maquina02", "Maquina03", "Maquina04"]
  type = list
  description = "Essa variável contem o conteúdo que vai para o arquivo."
}