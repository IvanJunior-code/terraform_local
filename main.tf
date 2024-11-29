resource "local_file" "foo" {
  content  = var.conteudo
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = "Conteúdo do arquivo"
  type = string
  description = "Essa variável contem o conteúdo que vai para o arquivo."
}