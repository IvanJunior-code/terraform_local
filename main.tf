resource "local_file" "foo" {
  content  = var.conteudo
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = 1000
  type = number
  description = "Essa variável contem o conteúdo que vai para o arquivo."
}