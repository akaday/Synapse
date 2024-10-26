const os = require('os');
const express = require('express');
const router = express.Router();

router.get('/health', (req, res) => {
  const healthCheck = {
    uptime: process.uptime(),
    message: 'OK',
    timestamp: Date.now(),
    cpuUsage: process.cpuUsage(),
    memoryUsage: process.memoryUsage(),
    loadAverage: os.loadavg()
  };

  try {
    res.send(healthCheck);
  } catch (e) {
    healthCheck.message = e;
    res.status(503).send();
  }
});

module.exports = router;
