# terraform-infracost-demo
#  Terraform Cost Estimation with Infracost + OpenAI Recommendations

This repository provides an automated workflow for estimating Terraform infrastructure costs using [Infracost](https://www.infracost.io/) and enhancing the experience with intelligent cost optimization suggestions via **OpenAI**.

---

##  Features

- Automatically runs on every **push or pull request** affecting Terraform files
- Calculates cost estimates using **Infracost**
- Converts Terraform plan to JSON
- Uses **OpenAI GPT** to provide cost optimization recommendations
- Saves the cost report and posts comments directly on PRs

---

##  Workflow Overview

### Triggered On:
- Push to `*.tf` files or workflow `.yml` files
- Pull requests touching Terraform code

### Main Steps:
1. Checkout repository
2. Setup Terraform & Infracost
3. Run `terraform init` & `terraform plan`
4. Convert plan to JSON
5. Run `infracost diff` to calculate cost
6. Generate cost optimization recommendations using OpenAI
7. Commit the cost report or comment on PR

---

##  GenAI Recommendations via OpenAI

- Integrates with [OpenAI's GPT API](https://platform.openai.com/)
- Uses cost diff from Infracost to generate intelligent suggestions
- Easy and fast to set up with just one API key

---

##  Secrets Required

| Secret Name           | Description                          |
|-----------------------|--------------------------------------|
| `INFRACOST_API_KEY`   | Your Infracost API key               |
| `OPENAI_API_KEY`      | Your OpenAI API key (GPT-4 or GPT-3.5) |

---

## 🛠️ Setup

1. Clone this repo and add your `.tf` Terraform infrastructure code
2. Set the required secrets in **GitHub → Settings → Secrets**
3. Push your code — GitHub Actions will do the rest 🚀

---

## 📄 Output

- `infracost-output.json`: contains the cost diff result
- **OpenAI Recommendation**: displayed in GitHub Action logs
- On PRs: A cost summary will be commented on automatically

---

## 📸 Sample Output

```json
{
  "totalMonthlyCost": "$84.23",
  "diff": "+$9.40 (added a new VM)"
}
