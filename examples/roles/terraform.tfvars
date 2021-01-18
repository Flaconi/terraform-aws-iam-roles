policies = [
  {
    name = "billing-ro"
    path = "/assume/"
    desc = "Provides read-only access to billing"
    file = "data/billing-ro.json"
    vars = {}
  },
]

roles = [
  {
    name                 = "ROLE-CUSTOM-POLICY"
    path                 = null
    desc                 = null
    trust_policy_file    = "data/trust-policy-file.json"
    permissions_boundary = null
    policies             = ["billing-ro"]
    policy_arns          = []
    inline_policies      = []
  },
  {
    name                 = "ROLE-POLICY-ARN"
    path                 = null
    desc                 = null
    trust_policy_file    = "data/trust-policy-file.json"
    permissions_boundary = null
    policies             = []
    policy_arns          = ["arn:aws:iam::aws:policy/PowerUserAccess"]
    inline_policies      = []
  },
  {
    name                 = "ROLE-INLINE-POLICY"
    path                 = null
    desc                 = null
    trust_policy_file    = "data/trust-policy-file.json"
    permissions_boundary = null
    policies             = []
    policy_arns          = []
    inline_policies = [
      {
        name = "rds-authenticate"
        file = "data/rds-authenticate.json.tmpl"
        vars = {
          aws_account_id = "1234567890"
        }
      }
    ]
  },
  {
    name                 = "ROLE-MULTIPLE-POLICIES"
    path                 = null
    desc                 = null
    trust_policy_file    = "data/trust-policy-file.json"
    permissions_boundary = null
    policies             = []
    policy_arns = [
      "arn:aws:iam::aws:policy/PowerUserAccess",
      "arn:aws:iam::aws:policy/AmazonEC2FullAccess",
    ]
    inline_policies = [
      {
        name = "rds-authenticate"
        file = "data/rds-authenticate.json.tmpl"
        vars = {
          aws_account_id = "1234567890"
        }
      },
      {
        name = "billing-ro"
        file = "data/billing-ro.json"
        vars = {}
      }
    ]
  },
  {
    name                 = "ROLE-PERMISSION-BOUNDARY"
    path                 = null
    desc                 = null
    trust_policy_file    = "data/trust-policy-file.json"
    permissions_boundary = "arn:aws:iam::aws:policy/PowerUserAccess"
    policies             = []
    policy_arns          = ["arn:aws:iam::aws:policy/AdministratorAccess"]
    inline_policies      = []
  },
]
