resource "newrelic_one_dashboard_raw" "one_dashboard_raws" {
  for_each = var.one_dashboard_raws

  name        = each.value.name
  account_id  = each.value.account_id
  description = each.value.description
  permissions = each.value.permissions

  dynamic "page" {
    for_each = each.value.page
    content {
      description = page.value.description
      name        = page.value.name
      dynamic "widget" {
        for_each = page.value.widget != null ? page.value.widget : []
        content {
          column              = widget.value.column
          configuration       = widget.value.configuration
          height              = widget.value.height
          linked_entity_guids = widget.value.linked_entity_guids
          row                 = widget.value.row
          title               = widget.value.title
          visualization_id    = widget.value.visualization_id
          width               = widget.value.width
        }
      }
    }
  }
}

