variable "Class_Times" {
  default =  {
    "MORNING TIME" = "6AM"
    "Evening Time" = "8PM"
  }
}

output "Class_timing1" {
  value = var.Class_Times.MORNING
  TIME
}

