import { browser, by, element, Key, logging, ExpectedConditions as EC } from 'protractor';

describe('Untitled Test Case', () => {

	beforeAll(async () => { });
	beforeEach(async () => { });

	it('should do something', async () => {
		await browser.get('https://chugunovanadi.github.io/');
		await element(by.xpath("//ion-icon[@name='checkmark-circle-outline']")).click();
	});

	afterEach(async () => {
		// Assert that there are no errors emitted from the browser
		const logs = await browser.manage().logs().get(logging.Type.BROWSER);
		expect(logs).not.toContain(jasmine.objectContaining({
			level: logging.Level.SEVERE,
		} as logging.Entry));
	});

});