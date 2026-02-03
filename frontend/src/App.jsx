import React, { useState, useEffect } from 'react';
import { showConnect, openContractCall } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';
import { uintCV, StacksTestnet } from '@stacks/transactions';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
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
      appDetails: { name: 'STX Staking', icon: window.location.origin + '/logo.png' },
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
      onFinish: () => setAmount('')
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
      onFinish: () => setAmount('')
    });
  };
  
  return (
    <div className="min-h-screen bg-gradient-to-br from-purple-600 via-indigo-600 to-blue-700 flex items-center justify-center p-4">
      <div className="max-w-md w-full">
        <h1 className="text-5xl font-bold text-white text-center mb-12 drop-shadow-lg">
          STX Staking
        </h1>
        
        {!address ? (
          <div className="bg-white rounded-2xl shadow-2xl p-8 text-center">
            <button 
              onClick={connectWallet}
              className="w-full bg-gradient-to-r from-purple-600 to-indigo-600 text-white font-semibold py-4 px-8 rounded-xl hover:from-purple-700 hover:to-indigo-700 transform hover:scale-105 transition-all duration-200 shadow-lg"
            >
              Connect Wallet
            </button>
          </div>
        ) : (
          <div className="bg-white rounded-2xl shadow-2xl p-8 space-y-6">
            <div className="text-center">
              <p className="text-sm text-gray-500 mb-1">Connected Address</p>
              <p className="text-xs font-mono bg-gray-100 px-3 py-2 rounded-lg">
                {address.slice(0, 10)}...{address.slice(-10)}
              </p>
            </div>
            
            <div className="space-y-4">
              <input
                type="number"
                value={amount}
                onChange={(e) => setAmount(e.target.value)}
                placeholder="Amount in STX"
                className="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-purple-500 focus:outline-none transition-colors"
              />
              
              <div className="grid grid-cols-2 gap-4">
                <button
                  onClick={handleStake}
                  disabled={!amount}
                  className="bg-green-500 text-white font-semibold py-3 px-6 rounded-xl hover:bg-green-600 disabled:opacity-50 disabled:cursor-not-allowed transform hover:scale-105 transition-all duration-200 shadow-md"
                >
                  Stake
                </button>
                <button
                  onClick={handleUnstake}
                  disabled={!amount}
                  className="bg-red-500 text-white font-semibold py-3 px-6 rounded-xl hover:bg-red-600 disabled:opacity-50 disabled:cursor-not-allowed transform hover:scale-105 transition-all duration-200 shadow-md"
                >
                  Unstake
                </button>
              </div>
            </div>
            
            <div className="bg-gradient-to-r from-purple-50 to-indigo-50 rounded-xl p-4 text-center">
              <p className="text-sm text-gray-600">Your Staked Balance</p>
              <p className="text-2xl font-bold text-purple-600 mt-1">0 STX</p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}

export default App;
