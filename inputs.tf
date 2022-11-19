variable"ss_rg"{
    type = object({
        name=string
        location=string
    })
}
variable"hyd_vnet"{
    type=object({
        name=string
        location=string
        address_space=string
    })
}
variable "sub"{
    type=object({
        name=list(string)
        address_prefixes=list(string)
    })
}