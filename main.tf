resource "local_file" "foo" {
  # content  = "O máquina que será usada é a ${join(", ", var.conteudo)}" #adaptado para o Set
  # content  = "O máquina que será usada é a ${var.conteudo.regiao} - ${var.conteudo.opcao_maquina} - ${var.conteudo.fazer_backup}" # adaptado para Object
  content  = "O máquina que será usada é a ${var.conteudo[0]} - ${var.conteudo[1]} - ${var.conteudo[2]}" # adaptado para Tuple
  filename = "./arquivo.txt"
}

variable "conteudo" {

  #Valor string
  # default = "Conteúdo default do arquivo."
  # type = string

  #Valor numérico
  # default = 10
  # type = number

  #Valor boolean
  # default = false
  # type = bool

  #Lista de strings
  # default = ["Maquina01", "Maquina02", "Maquina03", "Maquina04"]
  # type = list

  #Lista de algum tipo
  # default = [1, 2, 3, 4]
  # type = list(number)

  #Map
  # default = {
  #   "pequena" = "s-1vcpu-2gb",
  #   "media" = "s-2vcpu-4gb",
  #   "grande" = "s-3vcpu-8gb",
  # }
  # type = map
  # #type = map(string) #map de um tipo específico

  #Set
  # default = ["s-1vcpu-2gb", "s-2vcpu-4gb", "s-3vcpu-8gb", "s-3vcpu-8gb"] #o set não considera valores repetidos
  # type = set(string)

  #Object
  # default = {
  #   regiao        = "nyc1",
  #   opcao_maquina = "media",
  #   fazer_backup  = false
  # }
  # type = object({
  #   regiao        = string,
  #   opcao_maquina = string,
  #   fazer_backup  = bool
  # })

  #Tuple
  default = [ "String 1", "String 2", false ]
  type = tuple([string, string, bool])

  description = "Essa variável contem o conteúdo que vai para o arquivo."
}