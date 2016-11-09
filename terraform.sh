#!/bin/bash
# Installer script for terraform
TMP_DIR='/tmp/terraform'
ZIP_FILE='terraform.zip'
SOURCE='https://releases.hashicorp.com/terraform/0.7.9/terraform_0.7.9_linux_amd64.zip'

echo -e "\n### Pulling terraform pkg zip ###\n"
mkdir "${TMP_DIR}" && cd "${TMP_DIR}"
curl -s -o "${ZIP_FILE}" "${SOURCE}"

echo -e "\n### Extracting archive ###\n"
unzip "${ZIP_FILE}"

echo -e "\n### Moving binary to /usr/loca/bin ###\n"
mv terraform /usr/local/bin

echo -e "\n### Removing temporary files ###"
rm -rf "${TMP_DIR}"
