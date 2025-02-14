# Unhandled Exception During Asynchronous API Call in Dart

This repository demonstrates a common error in Dart: inadequate exception handling during asynchronous API calls.  The provided code makes an HTTP request, but the error handling is minimal.  The solution shows how to improve the robustness of the code by providing more informative error messages and handling various potential exceptions.

**Bug:** The original `fetchData` function catches exceptions, but it simply prints the error and rethrows it. This provides minimal context and doesn't handle potential issues gracefully.

**Solution:** The improved `fetchData` function provides more specific error handling and returns a result that indicates the success or failure of the API call, enabling better error management in the calling code.