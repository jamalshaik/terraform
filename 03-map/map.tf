variable "Class_Times" {
  default =  {
    "MORNING TIME" = "6AM"
    "Evening Time" = "8PM"
  }
}

output "Class_timing" {
  value = var.Class_Times[MORNING TIME]
}

