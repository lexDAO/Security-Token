contract SimpleRestrictedFDTFactory {
    // presented by OpenEsquire || lexDAO
    
    SimpleRestrictedFDT private SRFDT;
    
    address[] public tokens;
    
    event Deployed(address indexed SRFDT, address indexed owner);
    
    function newSRFDT(
        string memory name, 
		    string memory symbol,
		    IERC20 _fundsToken,
		    uint256 initialAmount) public {
       
        SRFDT = new SimpleRestrictedFDT(
            name, 
            symbol, 
            _fundsToken,
            msg.sender,
            initialAmount);
        
        tokens.push(address(SRFDT));
        
        emit Deployed(address(SRFDT), msg.sender);

    }
    
    function getTokenCount() public view returns (uint256 tokenCount) {
        return tokens.length;
    }
}
