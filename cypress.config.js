const { defineConfig } = require("cypress");

module.exports = defineConfig({
  e2e: {
    baseUrl: process.env.CYPRESS_BASE_URL,
    setupNodeEvents(on, config) {
      // implement node event listeners here
    },
  },
  reporter: 'cypress-multi-reporters',
  reporterOptions: {
    reporterEnabled: 'mocha-junit-reporter',
    mochaJunitReporterReporterOptions: {
      mochaFile: 'reports/junit/test-results-[hash].xml',
      toConsole: false
    }
  }
});
