# Change Log
<pre>
v3.0.0  MOD-1491: Add support new iOS 7 receipt.
        MOD-875: Add support for the download of Apple hosted IAP.
        MOD-1570: Add an informative alert or popup when running on iOS7 simulator.
        Added `addTransactionObserver` function that must be called at app startup after event listeners are add.
        DEPRECATED passing arguments to the `purchase` function individually, pass them as a dictionary instead.
        DEPRECATED Transaction state constants `PURCHASING`, `PURCHASED`, `FAILED`, and `RESTORED` in favor of `TRANSACTION_STATE_PURCHASING`, `TRANSACTION_STATE_PURCHASED`, `TRANSACTION_STATE_FAILED`, and `TRANSACTION_STATE_RESTORED`.
        DEPRECATED some event properties in the `transactionState` event.

v2.1.3  TIMODOPEN-265: Fixed error causing crash at launch

v2.1.2	Fix bug preventing iOS 7 builds: symbol EstimateBas64DecodedDataSize not found for armv7.

v2.1.1  MOD-1485: Resolve duplicate symbol conflict 

v2.1.0  MOD-1475: Include original transaction information for restored transactions

v2.0.2  MOD-1401 / TC-2329: Fixed issue with receiptVerificationSandbox always being true if set
        MOD-1401 / TC-2330: Corrected comment in app.js regarding live vs. sandbox usage

v2.0.1  MOD-1367: Removed use of uniqueIdentifier

v2.0.0  MOD-1278: Refactored purchase workflow (now uses event) to handle case where purchases are completed after app has been pushed to the background.
        BREAKING CHANGES: See the documentation for details</p>

v1.6.4  MOD-1341: Fixed double release of receiptVerificationSharedSecret in module dealloc method
v1.6.3  MOD-1259: Fixed base64_(encode/decode) duplicate symbol error when running with certain other modules
        MOD-1250, MOD-840: Fixed documentation
        MOD-1252: Fixed error when cancel is called on product request 
	
v1.6.2  MOD-1025: Fixed purchase cancel event's `cancelled` property

v1.6.1	MOD-998: Add support for Titanium Mobile SDK 3.0.0 and higher.

v1.6.0  MOD-849: Include receipt in restored transaction notification
        Integrated Apple's verification code for "In-App Purchase Receipt Validation on iOS" and
        refactored verifyReceipt API to accommodate improvements.
        Added a new module property: receiptVerificationSandbox (used by the 'verifyReceipt' method)
        Added a new module property: receiptVerificationSharedSecret (used by the 'verifyReceipt' method)
        Updated the example to support receipt verification (new switch on the UI and new code on the callback method to call 'verifyReceipt' for each transaction)
        Updated the documentation to reflect the changes
        DEPRECATED the 'callback', 'sandbox', and 'sharedSecret' properties of the dictionary object passed to the 'verifyReceipt' method
        Added new 'callback' parameter to the 'verifyReceipt' method
        Added additional properties to the dictionary object returned for purchased and restored transactions for consistency and use in passing to 'verifyReceipt'

v1.5	MOD-533: Fixed a bug that prevented the "restoredCompletedTransactions" event from firing.
		Fixed a couple of logic errors in the example/app.js (namely, using identifier instead of productIdentifier when restoring transactions).

v1.4	MOD-409: Fixed regression introduced by 1.8.1: "invalid" will no longer be present when empty.

v1.3	MOD-248: Completely revamped the example to demonstrate how to setup and use the module.

v1.2	Changed the signature of Ti.Storekit.verifyReceipt to allow you to pass in a sharedSecret string, thus adding
			support for auto renewable subscriptions.
		MOD-195: Fixed a memory related crash when requesting products.

v1.1    Added support for "restoredCompletedTransactions" so that past purchases can be restored for the user.
        Example and documentation have been updated to show how to use this new method.

v1.0    Initial Release
