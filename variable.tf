variable "type"{
    type=string
 }

variable "name"{
    type=list(any)
 }

variable "description"{
    type=string
 }

variable "violation_time_limit_seconds"{
    type=string
 }

variable "operator"{
    type=string
 }

variable "threshold"{
    type=string
 }

variable "threshold_duration"{
    type=string
 }

variable "threshold_occurrences"{
    type=string
 }
