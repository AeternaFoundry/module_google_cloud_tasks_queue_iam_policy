resource "google_cloud_tasks_queue_iam_policy" "cloud_tasks_queue_iam_policies" {
  for_each = var.cloud_tasks_queue_iam_policies

  name        = each.value.name
  policy_data = each.value.policy_data
  location    = each.value.location
  project     = each.value.project
}

