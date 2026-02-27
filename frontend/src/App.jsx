import React, { useState, useEffect } from 'react';
import { showConnect, openContractCall } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';
import { uintCV, StacksTestnet } from '@stacks/transactions';
import './App.css';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
  const [staked, setStaked] = useState(0);
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
  useEffect(() => {
    if (userSession.isUserSignedIn()) {
      const userData = userSession.loadUserData();
      setAddress(userData.profile.stxAddress.testnet);
    }
  }, []);
  
  const connectWallet = () => {
    showConnect({
      appDetails: {
        name: 'STX Staking',
        icon: window.location.origin + '/logo.png'
      },
      onFinish: () => {
        const userData = userSession.loadUserData();
        setAddress(userData.profile.stxAddress.testnet);
      },
      userSession
    });
  };
  
  const handleStake = async () => {
    const amountInMicroStx = parseInt(amount) * 1000000;
    await openContractCall({
      network: new StacksTestnet(),
      contractAddress: 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM',
      contractName: 'staking',
      functionName: 'stake',
      functionArgs: [uintCV(amountInMicroStx)],
      onFinish: (data) => {
        console.log('Staked:', data);
        setAmount('');
      }
    });
  };
  
  const handleUnstake = async () => {
    const amountInMicroStx = parseInt(amount) * 1000000;
    await openContractCall({
      network: new StacksTestnet(),
      contractAddress: 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM',
      contractName: 'staking',
      functionName: 'unstake',
      functionArgs: [uintCV(amountInMicroStx)],
      onFinish: (data) => {
        console.log('Unstaked:', data);
        setAmount('');
      }
    });
  };
  
  return (
    <div className="app">
      <header>
        <h1>STX Staking DApp</h1>
      </header>
      
      <main>
        {!address ? (
          <button onClick={connectWallet} className="connect-btn">
            Connect Wallet
          </button>
        ) : (
          <div className="staking-container">
            <p className="address">Connected: {address.slice(0, 8)}...{address.slice(-8)}</p>
            
            <div className="stake-form">
              <input
                type="number"
                value={amount}
                onChange={(e) => setAmount(e.target.value)}
                placeholder="Amount in STX"
                className="amount-input"
              />
              
              <div className="button-group">
                <button onClick={handleStake} disabled={!amount} className="stake-btn">
                  Stake
                </button>
                <button onClick={handleUnstake} disabled={!amount} className="unstake-btn">
                  Unstake
                </button>
              </div>
            </div>
            
            <div className="info">
              <p>Your Staked: {staked} STX</p>
            </div>
          </div>
        )}
      </main>
    </div>
  );
}

export default App;
