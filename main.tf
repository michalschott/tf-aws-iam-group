resource "aws_iam_group" "group" {
  name = "${var.name}"
  path = "${var.path}"
}

resource "aws_iam_group_policy_attachment" "group_policy_attachment" {
  count      = "${length(compact(distinct(var.policy_arns)))}"
  group      = "${aws_iam_group.group.name}"
  policy_arn = "${element(var.policy_arns, count.index)}"
}

resource "aws_iam_group_membership" "group" {
  name  = "${aws_iam_group.group.name}"
  users = ["${compact(distinct(var.membership))}"]
  group = "${aws_iam_group.group.name}"
}
