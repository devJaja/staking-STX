#!/bin/bash

cd /home/jaja/Desktop/my-project/staking/staking-project

# Commit 1
mkdir -p frontend
git add frontend
git commit -m "Create frontend directory" --date="2026-01-12T09:00:00" --allow-empty

# Commit 2
mkdir -p frontend/src
git add frontend/src
git commit -m "Create src directory" --date="2026-01-12T10:00:00" --allow-empty

# Commit 3
mkdir -p frontend/public
git add frontend/public
git commit -m "Create public directory" --date="2026-01-12T11:00:00" --allow-empty

# Commit 4
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0"
}
EOF
git add frontend/package.json
git commit -m "Initialize frontend package.json" --date="2026-01-12T12:00:00"

# Commit 5
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module"
}
EOF
git add frontend/package.json
git commit -m "Set module type" --date="2026-01-12T13:00:00"

# Commit 6
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite"
  }
}
EOF
git add frontend/package.json
git commit -m "Add dev script" --date="2026-01-12T14:00:00"

# Commit 7
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build"
  }
}
EOF
git add frontend/package.json
git commit -m "Add build script" --date="2026-01-12T15:00:00"

# Commit 8
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  }
}
EOF
git add frontend/package.json
git commit -m "Add preview script" --date="2026-01-12T16:00:00"

# Commit 9
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add @stacks/connect dependency" --date="2026-01-13T09:00:00"

# Commit 10
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0",
    "@stacks/transactions": "^6.0.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add @stacks/transactions dependency" --date="2026-01-13T10:00:00"

# Commit 11
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0",
    "@stacks/transactions": "^6.0.0",
    "react": "^18.2.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add React dependency" --date="2026-01-13T11:00:00"

# Commit 12
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0",
    "@stacks/transactions": "^6.0.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add react-dom dependency" --date="2026-01-13T12:00:00"

# Commit 13
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0",
    "@stacks/transactions": "^6.0.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "devDependencies": {
    "vite": "^5.0.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add Vite dev dependency" --date="2026-01-13T13:00:00"

# Commit 14
cat > frontend/package.json << 'EOF'
{
  "name": "staking-frontend",
  "version": "1.0.0",
  "type": "module",
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "@stacks/connect": "^7.0.0",
    "@stacks/transactions": "^6.0.0",
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "devDependencies": {
    "vite": "^5.0.0",
    "@vitejs/plugin-react": "^4.0.0"
  }
}
EOF
git add frontend/package.json
git commit -m "Add Vite React plugin" --date="2026-01-13T14:00:00"

# Commit 15
cat > frontend/vite.config.js << 'EOF'
import { defineConfig } from 'vite';

export default defineConfig({});
EOF
git add frontend/vite.config.js
git commit -m "Create Vite config" --date="2026-01-13T15:00:00"

# Commit 16
cat > frontend/vite.config.js << 'EOF'
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()]
});
EOF
git add frontend/vite.config.js
git commit -m "Configure React plugin" --date="2026-01-13T16:00:00"

# Commit 17
cat > frontend/public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>STX Staking</title>
</head>
<body>
  <div id="root"></div>
</body>
</html>
EOF
git add frontend/public/index.html
git commit -m "Create HTML template" --date="2026-01-14T09:00:00"

# Commit 18
cat > frontend/public/index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>STX Staking</title>
</head>
<body>
  <div id="root"></div>
  <script type="module" src="/src/main.jsx"></script>
</body>
</html>
EOF
git add frontend/public/index.html
git commit -m "Add viewport and script tag" --date="2026-01-14T10:00:00"

# Commit 19
cat > frontend/src/main.jsx << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';

ReactDOM.createRoot(document.getElementById('root')).render(<div>Loading...</div>);
EOF
git add frontend/src/main.jsx
git commit -m "Create main entry point" --date="2026-01-14T11:00:00"

# Commit 20
cat > frontend/src/App.jsx << 'EOF'
import React from 'react';

function App() {
  return <div>STX Staking</div>;
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Create App component" --date="2026-01-14T12:00:00"

# Commit 21
cat > frontend/src/main.jsx << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';

ReactDOM.createRoot(document.getElementById('root')).render(<App />);
EOF
git add frontend/src/main.jsx
git commit -m "Import and render App component" --date="2026-01-14T13:00:00"

# Commit 22
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';

function App() {
  const [address, setAddress] = useState(null);
  
  return <div>STX Staking</div>;
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Add address state" --date="2026-01-14T14:00:00"

# Commit 23
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  
  return <div>STX Staking</div>;
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Import showConnect from @stacks/connect" --date="2026-01-14T15:00:00"

# Commit 24
cat > frontend/src/App.jsx << 'EOF'
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
EOF
git add frontend/src/App.jsx
git commit -m "Implement connectWallet function" --date="2026-01-14T16:00:00"

# Commit 25
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
  
  return <div>STX Staking</div>;
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Add UserSession and update onFinish" --date="2026-01-15T09:00:00"

# Commit 26
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
  
  return (
    <div>
      <h1>STX Staking</h1>
      <button onClick={connectWallet}>Connect Wallet</button>
    </div>
  );
}

export default App;
EOF
git add frontend/src/App.jsx
git commit -m "Add connect wallet button" --date="2026-01-15T10:00:00"

# Commit 27
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
git commit -m "Display connected address" --date="2026-01-15T11:00:00"

# Commit 28
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
git commit -m "Add amount state" --date="2026-01-15T12:00:00"

# Commit 29
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';
import { openContractCall } from '@stacks/connect';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
git commit -m "Import openContractCall" --date="2026-01-15T13:00:00"

# Commit 30
cat > frontend/src/App.jsx << 'EOF'
import React, { useState } from 'react';
import { showConnect } from '@stacks/connect';
import { AppConfig, UserSession } from '@stacks/connect';
import { openContractCall } from '@stacks/connect';
import { uintCV } from '@stacks/transactions';

function App() {
  const [address, setAddress] = useState(null);
  const [amount, setAmount] = useState('');
  const appConfig = new AppConfig(['store_write', 'publish_data']);
  const userSession = new UserSession({ appConfig });
  
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
git commit -m "Import uintCV from @stacks/transactions" --date="2026-01-15T14:00:00"

echo "30 commits created..."
