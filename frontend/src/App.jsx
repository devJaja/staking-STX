import React, { useState } from 'react';
import { showConnect, openContractCall } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';
import { uintCV, StacksTestnet } from '@stacks/transactions';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
  const connectWallet = () => {
    showConnect({
      appDetails: { name: 'STX Staking', icon: window.location.origin + '/logo.png' },
      onFinish: () => {
        const userData = userSession.loadUserData();
        setAddress(userData.profile.stxAddress.testnet);
      },
      userSession
    });
  };
  
  const handleStake = async () => {};
  
  return (
    <div>
      <h1>STX Staking</h1>
      {address ? <p>Connected: {address}</p> : <button onClick={connectWallet}>Connect Wallet</button>}
    </div>
  );
}

export default App;
// Commit 33
// Commit 34
// Commit 35
// Commit 36
// Commit 37
// Commit 38
// Commit 39
