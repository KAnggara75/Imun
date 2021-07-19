# Imun | CoVid Live info Apps with Flutter

---

![Imun](https://img.shields.io/badge/Imun-CoVid_Live_info_Apps_with_Flutter-blue?style=for-the-badge&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAHUwAAB1MAHdM3LNAAAGvmlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDUgNzkuMTYzNDk5LCAyMDE4LzA4LzEzLTE2OjQwOjIyICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8vbnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoV2luZG93cykiIHhtcDpDcmVhdGVEYXRlPSIyMDIwLTAxLTI0VDE4OjQwOjU2KzA3OjAwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAyMS0wNy0xOVQxNDoyNToyOCswNzowMCIgeG1wOk1ldGFkYXRhRGF0ZT0iMjAyMS0wNy0xOVQxNDoyNToyOCswNzowMCIgZGM6Zm9ybWF0PSJpbWFnZS9wbmciIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJzUkdCIElFQzYxOTY2LTIuMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpkMDgyOWVlNi02MmIwLTRhYTgtOWIyMy1jNmFmNjkxODBkOGYiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6Mzk0OWJiODYtNWNlMS02NDQ1LTlhZDUtYzlhZGY4MGEwZGNhIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9InhtcC5kaWQ6Mzk0OWJiODYtNWNlMS02NDQ1LTlhZDUtYzlhZGY4MGEwZGNhIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDozOTQ5YmI4Ni01Y2UxLTY0NDUtOWFkNS1jOWFkZjgwYTBkY2EiIHN0RXZ0OndoZW49IjIwMjAtMDEtMjRUMTg6NDA6NTYrMDc6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChXaW5kb3dzKSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6ODAzZWJjYmUtODU5Zi01ODQzLTk5ZjctYzk5ZWNhNWE4YTYzIiBzdEV2dDp3aGVuPSIyMDIwLTAxLTI1VDA2OjA2OjE3KzA3OjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOmQwODI5ZWU2LTYyYjAtNGFhOC05YjIzLWM2YWY2OTE4MGQ4ZiIgc3RFdnQ6d2hlbj0iMjAyMS0wNy0xOVQxNDoyNToyOCswNzowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTkgKE1hY2ludG9zaCkiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+CKsuoQAACMVJREFU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)

![Love](https://forthebadge.com/images/badges/built-with-love.svg)

![Flutter](https://img.shields.io/badge/Made_with-Flutter-blue?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Made_with-Dart-blue?style=for-the-badge&logo=dart)

![Android](https://img.shields.io/badge/Made_For-Android-green?style=for-the-badge&logo=android)
![iOS](https://img.shields.io/badge/Made_For-iOS-lightgrey?style=for-the-badge&logo=ios)
![Web](https://img.shields.io/badge/Made_For-Web-blue?style=for-the-badge&logo=googlechrome)

## Live Info

---

![Positif](https://img.shields.io/badge/dynamic/json?color=red&label=Total%20Positif&query=value&url=https://api.kawalcorona.com/positif?logoWidth=80&style=for-the-badge&logo=addthis)
![Sembuh](https://img.shields.io/badge/dynamic/json?color=green&label=Total%20Sembuh&query=value&url=https://api.kawalcorona.com/sembuh?logoWidth=80&style=for-the-badge&logo=adguard)

## License

![License](https://img.shields.io/badge/License-MIT-blue?logoWidth=80&style=for-the-badge&)
