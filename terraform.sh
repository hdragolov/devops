#!/bin/bash
# Installer script for terraform
TMP_DIR='/tmp/terraform'
ZIP_FILE='terraform.zip'
VERSION='0.7.10'
SOURCE="https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip"

echo -e "\n### Pulling terraform pkg zip ###\n"
mkdir "${TMP_DIR}" && cd "${TMP_DIR}"
curl -s -o "${ZIP_FILE}" "${SOURCE}"

echo -e "\n### Extracting archive ###\n"
unzip "${ZIP_FILE}"

echo -e "\n### Moving binary to /usr/loca/bin ###\n"
mv terraform /usr/local/bin

echo -e "\n### Removing temporary files ###"
rm -rf "${TMP_DIR}"
