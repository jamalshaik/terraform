variable "CLASSES" {
  default = ["AWS","AZURE"]
}

output "First_Class"{
  value = var.CLASSES[0]
}

output "Second_class" {
  value = var.CLASSES[1]
}