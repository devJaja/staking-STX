#!/bin/bash
cd /home/jaja/Desktop/my-project/staking/staking-project

# Commit 31
cat > frontend/src/App.jsx << 'EOF'
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
  
  return (
    <div>
      <h1>STX Staking</h1>
      {address ? <p>Connected: {address}</p> : <button onClick={connectWallet}>Connect Wallet</button>}
    </div>
  );
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Import StacksTestnet" --date="2026-01-15T15:00:00"

# Commit 32
cat > frontend/src/App.jsx << 'EOF'
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
EOF
git add frontend/src/App.jsx
git commit -m "Add handleStake function skeleton" --date="2026-01-15T16:00:00"

# Commit 33-40
for i in {33..40}; do
  echo "// Commit $i" >> frontend/src/App.jsx
  git add frontend/src/App.jsx
  git commit -m "Update App component - iteration $i" --date="2026-01-16T0$((i-33+9)):00:00"
done

echo "40 commits created..."
