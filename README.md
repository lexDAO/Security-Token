# Security Token Codebase
Simple Restricted Funds Distribution Token (ERC-1404 + ERC-2222)

[Mainnet Factory Deployment 🏭](https://etherscan.io/address/0x697D15d97af389A5f7922eFECEab39A688A74A99#code)
Fee: 0.001 ETH (input into top payable field on etherscan)

# How to use whitelisting

Whitelists are made up of series of addresses.

To create a whitelist, assign a series of addresses with a whitelist number.

    function addToWhitelist(address[] memory addressToAdd, uint8 whitelist) public onlyAdministrator {

To add more addresses to the whitelist, call function with new addresses alongside the specified whitelist name.

With every new whitelist number is a new set of addresses.

# How to control whitelist interactions

    function updateOutboundWhitelistEnabled(uint8 sourceWhitelist, uint8 destinationWhitelist, bool newEnabledValue) public onlyAdministrator {

Call this function to enable/disable the directional interaction of various addresses from certain assigned whitelists.
