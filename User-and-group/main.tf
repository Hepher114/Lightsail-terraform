# Create IAM user named 'the_user1'
resource "aws_iam_user" "user1" {
    name = "the_user1"
}

# Create IAM user named 'the_user2'
resource "aws_iam_user" "user2" {
    name = "the_user2"
}

# Create IAM group named 'developers'
resource "aws_iam_group" "developers" {
  name = "developers"
}

# Add 'user1' and 'user2' to the 'developers' group
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  # List of users to be added to the group
  users = [
    aws_iam_user.user1.name,  # Reference to the user1 resource
    aws_iam_user.user2.name,  # Reference to the user2 resource
  ]

  group = aws_iam_group.developers.name  # Reference to the developers group
}

# Attach a policy to the 'developers' group that allows creating and deleting groups
resource "aws_iam_group_policy" "my_developer_policy" {
  name  = "my_developer_policy"
  group = aws_iam_group.developers.name  # Apply policy to the developers group

  # The policy allows actions related to creating and deleting groups
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
           "iam:CreateGroup",  # Allows the user to create a group
           "iam:DeleteGroup",  # Allows the user to delete a group
        ]
        Effect   = "Allow"  # The effect is Allow, so these actions are permitted
        Resource = "*"      # Applies to all resources
      },
    ]
  })
}
