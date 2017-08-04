tf-aws-iam-group
----------------

This simple module is designed to:
* create IAM group
* attach group policy / policies to it
* add members

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| membership | Users to add to group as members. | string | `<list>` | no |
| name | Group name. | string | - | yes |
| path | Path in which to create the group. | string | `/` | no |
| policy_arns | Policy ARNs to attach. | string | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| group_arn | The ARN assigned for this group. |
| group_id | The group's ID. |
| group_members | Member list. |
| group_name | The group's name. |
| group_path | The path of the group in IAM. |

Example Usage
----------------

Including an example of how to use this module:

    module "iam_group" {
      source      = "git::https://github.com/michalschott/tf-aws-iam-group.git?ref=master"
      name        = "my_group"
      policy_arns = ["arn:aws:iam::aws:policy/ReadOnlyAccess"]
    }

License
-------

MIT

Author Information
------------------

This role was created in 2017 by [Michal Schott](http://github.com/michalschott).
