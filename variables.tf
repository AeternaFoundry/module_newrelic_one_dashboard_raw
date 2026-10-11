variable "one_dashboard_raws" {
  description = <<EOT
Map of one_dashboard_raws, attributes below
Required:
    - name
    - page (block):
        - description (optional)
        - name (required)
        - widget (optional, block):
            - column (required)
            - configuration (required)
            - height (optional)
            - linked_entity_guids (optional)
            - row (required)
            - title (required)
            - visualization_id (required)
            - width (optional)
Optional:
    - account_id
    - description
    - permissions
EOT

  type = map(object({
    name        = string
    account_id  = optional(number)
    description = optional(string)
    permissions = optional(string)
    page = list(object({
      description = optional(string)
      name        = string
      widget = optional(list(object({
        column              = number
        configuration       = string
        height              = optional(number)
        linked_entity_guids = optional(list(string))
        row                 = number
        title               = string
        visualization_id    = string
        width               = optional(number)
      })))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.one_dashboard_raws : (
        length(v.page) >= 1
      )
    ])
    error_message = "Each page list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.one_dashboard_raws : (
        v.permissions == null || (contains(["private", "public_read_only", "public_read_write"], v.permissions))
      )
    ])
    error_message = "must be one of: \"private\", \"public_read_only\", \"public_read_write\""
  }
}

