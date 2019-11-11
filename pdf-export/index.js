const puppeteer = require("puppeteer");

(async () => {
  const browser = await puppeteer.launch();

  const page = await browser.newPage();
  await page.goto("file://" + __dirname + "/../index.html");

  await page.content();

  const pdfConfig = {
    path: "./cv.pdf", // Saves pdf to disk.
    format: "A4",
    printBackground: true,
    margin: {
      // Word's default A4 margins
      top: "0",
      bottom: "0",
      left: "0",
      right: "0"
    }
  };
  await page.pdf(pdfConfig);

  await browser.close();
})();
