const express = require('express');
const path = require('path');
const app = express();

// Serve semua file statis dari folder saat ini (misalnya /deploy)
app.use(express.static(path.join(__dirname)));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
