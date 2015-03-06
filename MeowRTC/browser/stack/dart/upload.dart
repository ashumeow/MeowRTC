import "dart:html";
import "dart:async";
class upload {
	FileUploadElement f;
	String targetURL;
	Completer<String> uploaded = new Completer<String>();
	Future<String> get uploaded {
	var display = new formData();
	display.appendBlob("file", f.files[0]);
	HttpRequest.request(targetURL, method:"post", withCredentials:false, sendData:display).then((req) {
		uploaded.complete(req.responseText);
	});
	return uploaded.future;
	}
	upload(this.f, this.targetURL);
}
