variable "name" {
  description = "Group name."
}

variable "path" {
  description = "Path in which to create the group."
  default     = "/"
}

variable "policy_arns" {
  description = "Policy ARNs to attach."
  default     = []
}

variable "membership" {
  description = "Users to add to group as members."
  default     = []
}

output "group_id" {
  value       = "${aws_iam_group.group.id}"
  description = "The group's ID."
}

output "group_arn" {
  value       = "${aws_iam_group.group.arn}"
  description = "The ARN assigned for this group."
}

output "group_name" {
  value       = "${aws_iam_group.group.name}"
  description = "The group's name."
}

output "group_path" {
  value       = "${aws_iam_group.group.path}"
  description = "The path of the group in IAM."
}

output "group_members" {
  value       = "${aws_iam_group_membership.group.users}"
  description = "Member list."
}
