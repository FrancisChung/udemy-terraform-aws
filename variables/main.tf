variable "vpc" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  default = ["Value1", "Value2", "Value3"]
}

variable "mymap" {
  type = map
  default = {
    key1 = "Value1"
    key2 = "Value2"
  }
}