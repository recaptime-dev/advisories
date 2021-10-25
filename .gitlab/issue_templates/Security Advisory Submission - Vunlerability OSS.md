---
# NOTES TO WHOEVER SUBMITING AN SECURITY ADVISORY FOR AN VULERABILITY:
# - This form is in YAML forntmatter to ease our code maintenance on extracting stuff.
# - The repo README says this is only covers The Pins Team/Recap Time's projects and other community projects
#   where atleast one maintainer is from Recap Time.
# - If the affected product is NOT hosted on GitLab SaaS or is closed-source, please use the Prioperitary form
#   instead.

# PLEASE KEEP THIS PART UNCHANGED TO AVOID ISSUES! - START #
type:
  formTemplate: security-advisory
  affectedSoftwareType: vunlearbility-oss
# PLEASE KEEP THIS PART UNCHANGED TO AVOID ISSUES! - END #

data:
  reporter:
    name: "TODO"
    email: "TODO"
  vulnerability:
    # Format should be "[VULNTYPE] in [COMPONENT] in [VENDOR][PRODUCT] [VERSION] allows [ATTACKER] to [IMPACT] via [VECTOR]"
    description: "TODO"
    cwe: "TODO" # "CWE-22" # Path Traversal
    product:
      # "namespace/project", the path of the project within GitLab SaaS
      gitlab_path: "RecapTime/path/to/oss-project"
      # For most cases, use The Pins Team as vendor name. For community projects where we manage or has maintainer
      # permissions by atleast 1 team members, use the community name instead.
      vendor: "TODO"
      # Package name
      name: "TODO"
      affected_versions:
        - "TODO" # "1.2.3"
        - "TODO" # ">1.3.0, <=1.3.9"
      fixed_versions:
        - "TODO" # "1.2.4"
        - "TODO" # "1.3.10"
    # CVSS scores can be computed by means of the NVD CVSS Calculator, accessible at https://nvd.nist.gov/vuln-metrics/cvss/v3-calculator.
    impact: "TODO"
    solution: "TODO" # "Upgrade to version 1.2.4 or 1.3.10"
    credit: "TODO"
    references:
      # GitLab issue tracker
      - "https://gitlab.com/RecapTime/path/to/oss-project/-/issues/[ISSUE-NUMBER]"
  # After a CVE request is submited to and validated by GitLab Security Team or any CNA, should we
  # publish the details of a CVE? Nte that this response will be used when our security teams submit
  # an CVE ID request to an CNA.
  publishingSched: TODO # either IMMEDIATELY or HOLD
---

/label ~"advisory::queued" ~"advisory-type::security" ~"advisory-reporter::external" ~"advisory-product-type::oss"
/confidential
