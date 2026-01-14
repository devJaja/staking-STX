import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  
  const connectWallet = () => {
    showConnect({
      appDetails: {
        name: 'STX Staking',
        icon: window.location.origin + '/logo.png'
      },
      onFinish: () => {}
    });
  };
  
  return <div>STX Staking</div>;
}

export default App;
