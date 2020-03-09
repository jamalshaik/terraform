variable "CLASS_TIME" {
  default =  {
    "MORNING" = "6AM"
    "Evening" = "8PM"
  }
}

output "CLASS" {
  value = var.CLASS_TIME["MORNING"]
}

