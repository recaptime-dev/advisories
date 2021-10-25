---
# NOTES TO WHOEVER SUBMITING AN SECURITY ADVISORY FOR AN VULERABILITY:
# - This form is in YAML forntmatter to ease our code maintenance on extracting stuff.
# - FOR USE BY AN RECAP TIME SQUAD MEMBER OR AN PROJECT COORDINATOR/MAINTAINER OF AN OSS PROJECT WITH
#   ACCESS TO OUR INTERNAL ISSUE TRACKER OR HAS COMMUNICATION WITH AN SQUAD MEMBER. PROJECT DEVELOPERS
#   AND CONTRIBUTORS SHOULD USE THE OSS FORM INSTEAD.
# - See docs/form.md for the YAML schema documentation.

# PLEASE KEEP THIS PART UNCHANGED TO AVOID ISSUES! - START #
type:
  formTemplate: security-advisory
  affectedSoftwareType: vunlearbility-internal
# PLEASE KEEP THIS PART UNCHANGED TO AVOID ISSUES! - END #

data:
  reporter:
    name: "Recap Time Security"
    # please change this to security@rtapp.tk while we dn't own that domain yet.
    email: "security@recaptime.app"
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
    solution: "Upgrade to version X.Y.X or A.B.C as no workarounds has been reported yet in affected versions." # "Upgrade to version 1.2.4 or 1.3.10"
    credit: "Thanks [VUNREPORTER] for reporting this bug "
    references:
      # GitLab issue tracker
      - "https://gitlab.com/RecapTime/path/to/oss-project/-/issues/[ISSUE-NUMBER]"
      # Private Issue Tracker for security-related reports
      - "https://gitlab.com/MadeByThePinsHub/internal/security-reports/issues/[ISSUE-NUMBER]"
  # After a CVE request is submited to and validated by GitLab Security Team or any CNA, should we
  # publish the details of a CVE? Nte that this response will be used when our security teams submit
  # an CVE ID request to an CNA. Available variables are IMMEDIATELY and HOLD.
  publishingSched: HOLD
---

/label ~"advisory::queued" ~"advisory-type::security" ~"advisory-reporter::internal"
/confidential
