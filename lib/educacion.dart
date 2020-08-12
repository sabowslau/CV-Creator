import 'package:flutter/material.dart';
import 'package:mypersonal3dcv/seccion.dart';
import 'package:mypersonal3dcv/textlink.dart';
import 'package:puppeteer/puppeteer.dart' as pup;

class Educacion extends StatelessWidget {
  const Educacion({Key key}) : super(key: key);
  void openWeb() async {
    var browser = await pup.puppeteer.launch();
    var page = await browser.newPage();

    await page.goto('https://developers.google.com/web/',
        wait: pup.Until.networkIdle);

    // Type into search box.
    await page.type('.devsite-search-field', 'Headless Chrome');

    // Wait for suggest overlay to appear and click "show all results".
    var allResultsSelector = '.devsite-suggest-all-results';
    await page.waitForSelector(allResultsSelector);
    await page.click(allResultsSelector);

    // Wait for the results page to load and display the results.
    const resultsSelector = '.gsc-results .gsc-thumbnail-inside a.gs-title';
    await page.waitForSelector(resultsSelector);

    // Extract the results from the page.
    var links = await page.evaluate(r'''resultsSelector => {
  const anchors = Array.from(document.querySelectorAll(resultsSelector));
  return anchors.map(anchor => {
    const title = anchor.textContent.split('|')[0].trim();
    return `${title} - ${anchor.href}`;
  });
}''', args: [resultsSelector]);
    print(links.join('\n'));

    await browser.close();
  }

  @override
  Widget build(BuildContext context) {
    return SeccionCV(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextLink(
            text: """ - Universidad Autonoma de Bucaramanga (Bucaramanga, CO)
    Ingenieria En Energia
""",
            url: "https://www.unab.edu.co/verifica",
            onTap: () {
              openWeb();
            },
            toolTip: """U00107443 
20201 
5abbb38e""",
          ),
          TextLink(
            text: "- Autodidacta",
            url: "https://github.com/sabowslau",
          ),
          TextLink(
            text: "   Flutter",
            url: "https://github.com/sabowslau",
            toolTip: "This web page was made with flutter",
          ),
          TextLink(
            text: "   Dart",
            url: "https://github.com/sabowslau",
          ),
          TextLink(
            text: "   C#",
            url: "www.sabowsla.com",
          ),
        ],
      ),
      title: "EDUCACIÓN",
    );
  }
}
