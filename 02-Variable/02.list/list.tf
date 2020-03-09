variable      "CLASSES" {
  default     = ["AWS","AZURE","GCP"]
}

output        "First_Class"{
  value       = var.CLASSES[0]
}

output        "Second_class" {
  value       = var.CLASSES[1]
}

output        "Thrid_class"{
  value       = var.CLASSES[2]
}