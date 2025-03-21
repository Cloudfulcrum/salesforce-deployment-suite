# Salesforce Deployment Suite

This repository contains multiple GitHub Actions designed to automate various Salesforce development and deployment tasks. Each action is packaged as a Docker container and provides a specialized function.

### **Actions Overview**

**1. cf-sf-lean-packager**

    Packages and prepares Salesforce metadata for deployment.

* **Inputs**:
    * **source-directory**: Path to metadata source files.
    * **package-name**: Name of the package to be created.


* **Outputs**:
    * **package-path**: Path to the generated package.

Usage Example:

    - name: Package Salesforce Metadata
      uses: ghcr.io/itfulcrum/cf-sf-lean-packager@latest
      with:
          source-directory: "./src"
          package-name: "MyPackage.zip"

**2. cf-sf-smart-deploy**

    Deploys Salesforce metadata smartly by analyzing changes.

* **Inputs**:
    * **package-path**: Path to the deployment package.
    * **target-org**: Salesforce org alias or credentials.

Usage Example:

    - name: Deploy Salesforce Metadata
      uses: ghcr.io/itfulcrum/cf-sf-smart-deploy@latest
      with:
          package-path: "./target/MyPackage.zip"
          target-org: "my-salesforce-org"

**3. cf-sf-deploy-dynamic-apex**

    Deploys Apex classes dynamically based on repository changes.

* **Inputs**:
    * **apex-directory**: Directory containing Apex classes.

Usage Example:

    - name: Deploy Apex Classes
      uses: ghcr.io/itfulcrum/cf-sf-deploy-dynamic-apex@latest
      with:
        apex-directory: "./src/classes"

**4. cf-sf-apex-cache-builder**

    Builds and caches Apex-related artifacts to optimize deployments.

* **Inputs**:
    * **cache-key**: Unique key for caching artifacts.

Usage Example:

    - name: Build Apex Cache
      uses: ghcr.io/itfulcrum/cf-sf-apex-cache-builder@latest
      with:
      cache-key: "apex-build-cache"

**5. cf-sf-secure-quality-gate**

    Runs security and code quality checks before deployment.

* **Inputs**:
    * **source-directory**: Path to source files.

* **Outputs**:
  * **quality-report**: Path to the generated quality report.

Usage Example:

    - name: Run Security & Quality Checks
      uses: ghcr.io/itfulcrum/cf-sf-secure-quality-gate@latest
      with:
      source-directory: "./src"

## Installation & Usage

To use these GitHub Actions, ensure that your repository has:

* A .github/workflows/ directory for defining workflows.
* Necessary Salesforce authentication secrets configured in GitHub Actions.

## Contributing

Feel free to submit pull requests to improve existing actions or add new functionality.

## License

This project is licensed under the MIT License.
