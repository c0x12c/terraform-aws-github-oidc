module "github_oidc" {
  source    = "../../"
  role_name = "service-atlas"

  role_policy_arns = []
  conditions = [
    {
      test     = "StringLike"
      variable = "token.actions.githubusercontent.com:sub"
      values   = ["repo:spartan/example"]
    }
  ]
}
